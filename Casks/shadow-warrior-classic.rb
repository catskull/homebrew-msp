cask "shadow-warrior-classic" do
  version :latest
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/ZDoom/Raze/releases/download/1.10.2/raze-macos-1.10.2.zip"
  name "Shadow Warrior Classic"
  desc "Shadow Warrior Classic is another first person shooter from 3D Realms using the same Build engine as Duke Nukem 3D, but a Kung-Fu movie theme with weapons like a katana and shurikens, along with 3D Realms' infamous humor.
Developer:  3D Realms
Release Date:  September 12, 1997
Source Code Release Date:  April 2, 2005"
  homepage "https://macsourceports.com/game/swarrior"

  app "Raze.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "Raze" directory in your Documents directory, and then a "swarrior" directory under that. Copy the files from an existing installation of Shadow Warrior Classic into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
