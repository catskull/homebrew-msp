# Define a method to process the cask file
def load_cask(file_path)
  # Load Homebrew's Cask DSL
  require "cask/cask"

  # Load the cask file
  cask = Cask::CaskLoader.load(file_path)

  # Extract relevant information
  name = cask.name.first
  url = cask.homepage.to_s
  token = cask.token

  "| [#{name}](#{url}) | `#{token}` |"
rescue => e
  warn "Failed to load #{file_path}: #{e.message}"
  nil
end

# Process all `.rb` files in the given directory
def generate_cask_list(directory)
  files = Dir.glob(File.join(directory, '*.rb'))
  header = <<~HEADER
    | Game | Cask |
    | ---- | ---- |
  HEADER
  cask_list = files.map { |file| load_cask(file) }.compact.sort_by(&:downcase)

  header + cask_list.join("\n")
end

# Change this to the directory where your cask files are stored
directory = "Casks/"

puts generate_cask_list(directory)
