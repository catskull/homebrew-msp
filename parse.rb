require 'nokogiri'
require 'debug'
require 'open-uri'
require 'digest'
require 'fileutils'
require 'open3'
require 'zip'

# Ensure a file is provided
if ARGV.length < 1
  puts "Usage: ruby generate_cask.rb <html_file>"
  exit 1
end

html_file = ARGV[0]
debug = ARGV[1]

debugger if debug

# Read and parse the HTML file
html_content = File.read(html_file)
doc = Nokogiri::HTML(html_content)

# Extract relevant details
app_name = doc.css('h3 a').text.strip
cask_name = app_name.downcase.gsub(/\s+/, '-').gsub(/[^a-z0-9-]/, '')
download_url = doc.at_xpath('//a[contains(@href, ".dmg") or contains(@href, ".zip") or contains(@href, ".tar.gz")][normalize-space(text())="Download"]')&.attr('href') || "UNKNOWN_URL"
description_parts = doc.css('div.card-body p').map(&:text).map(&:strip)
description = description_parts[1] + "\n"

# Format description with preformatted text
if developer = doc.css('p strong').find { |s| s.text.include?('Developer') }&.next_sibling&.text&.strip
  description += "Developer: #{developer.strip}\n"
end
if release_date = doc.css('p strong').find { |s| s.text.include?('Release Date') }&.next_sibling&.text&.strip
  description += "Release Date: #{release_date}\n"
end
if source_code_release = doc.css('p strong').find { |s| s.text.include?('Source Code Release Date') }&.next_sibling&.text&.strip
  description += "Source Code Release Date: #{source_code_release}\n"
end

install_instructions = doc.css('a').find { |s| s.text.include?('Installation instructions') }&.next_sibling&.text&.strip

# Download the file
puts "Downloading file: #{download_url}"
filename = File.basename(download_url)
File.open(filename, "wb") do |file|
  file.write(URI.open(download_url).read)
end

# Calculate SHA256
sha256 = Digest::SHA256.file(filename).hexdigest


extracted_app_name = "UNKNOWN_APP"

# Handle different file types
if filename.end_with?(".dmg")
  # Mount the DMG and extract the app name
  mount_output, status = Open3.capture2("hdiutil attach '#{filename}' -nobrowse -readonly")
  if status.success?
    mount_point = mount_output.match(/\/Volumes\/(.+)/)[1].strip
    app_file = Dir.glob("/Volumes/#{mount_point}/*.app").first
    extracted_app_name = File.basename(app_file, ".app") if app_file
    system("hdiutil detach '/Volumes/#{mount_point}'")
  end
elsif filename.end_with?(".zip", ".tar.gz")
  # Extract the archive and find the .app inside
  extracted_folder = "extracted_#{cask_name}"
  FileUtils.mkdir_p(extracted_folder)

  if filename.end_with?(".zip")
    # Handle ZIP extraction
    Zip::File.open(filename) do |zip_file|
      zip_file.each do |entry|
        dest_path = File.join(extracted_folder, entry.name)
        FileUtils.mkdir_p(File.dirname(dest_path)) unless entry.directory?
        zip_file.extract(entry, dest_path) unless File.exist?(dest_path)
      end
    end
  elsif filename.end_with?(".tar.gz")
    # Handle TAR.GZ extraction
    system("tar -xzf #{filename} -C #{extracted_folder}")
  end

  # Check if a .dmg file exists inside the extracted folder
  dmg_files = Dir.glob("#{extracted_folder}/**/*.dmg")
  debugger if debug
  if dmg_files.any?
    puts "Found DMG inside ZIP: #{dmg_files.first}"
    dmg_filename = dmg_files.first

    # Mount the DMG and extract the app name
    mount_output, status = Open3.capture2("yes | hdiutil attach '#{dmg_filename}' -nobrowse -readonly")
    if status.success?
      mount_point = mount_output.match(/\/Volumes\/(.+)/)[1].strip
      app_file = Dir.glob("/Volumes/#{mount_point}/*.app").first
      extracted_app_name = File.basename(app_file, ".app") if app_file
      system("hdiutil detach '/Volumes/#{mount_point}'")
    else
      debugger
    end

    # Clean up extracted files
    FileUtils.rm_rf(extracted_folder) if Dir.exist?(extracted_folder)
  else
    # No .dmg, look for .app inside extracted ZIP
    app_files = Dir.glob("#{extracted_folder}/**/*.app")
    if app_files.any?
      # Prioritize the deepest .app file (max depth)
      app_file = app_files.max_by { |f| f.count('/') }
      extracted_app_name = File.basename(app_file, ".app")
      extracted_app_path = app_file.sub(%r{^#{Regexp.escape(extracted_folder)}/}, '') # Preserve subfolder structure
    else
      extracted_app_name = "UNKNOWN_APP"
      extracted_app_path = "UNKNOWN_APP.app"
    end

    # Clean up extracted folder
    FileUtils.rm_rf(extracted_folder) if Dir.exist?(extracted_folder)
  end
end
# Delete the downloaded file
FileUtils.rm(filename) if File.exist?(filename)

# Generate a cask template
cask_template = <<~CASK
  cask "#{cask_name}" do
    version :latest
    sha256 "#{sha256}"

    url "#{download_url}"
    name "#{app_name}"
    desc "#{description.strip}"
    homepage "https://macsourceports.com/game#{html_file.split('/game').last.split('.html').first}"

    app "#{extracted_app_name}.app"

    postflight do
      puts <<~POSTFLIGHT
        #{install_instructions}
      POSTFLIGHT
    end
  end
CASK

# Output the generated Cask file
File.open("#{cask_name}.rb", "w") do |file|
  file.write(cask_template)
end

puts cask_template
