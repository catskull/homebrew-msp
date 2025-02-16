cask "nam" do
  version :latest
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/ZDoom/Raze/releases/download/1.10.2/raze-macos-1.10.2.zip"
  name "NAM"
  desc "War is hell. And so are the graphics in this game. NAM, released in 1998, used the Build engine long after its shelf life as a mainstream option.But if you feel like trying out this ambitious but flawed attempt at realistic graphics in an engine designed for flying pigs, here's your chance.
Developer:  TNT Team
Release Date:  July 31, 1998"
  homepage "https://macsourceports.com/game/nam"

  app "Raze.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "Raze" directory in your Documents directory, and then a "NAM" directory under that. Copy the files from an existing installation of NAM into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
