  cask "shadow-warrior-classic" do
    version :latest
    sha256 "b7980849a507cfcfeaf8f76298c032bfe4415b2f246f41e3c0c9a6291770c70c"

    url "https://github.com/ZDoom/Raze/releases/download/1.11.0/raze-macos-1.11.0.zip"
    name "Shadow Warrior Classic"
    desc <<~DESC
Shadow Warrior Classic is another first person shooter from 3D Realms using the same Build engine as Duke Nukem 3D, but a Kung-Fu movie theme with weapons like a katana and shurikens, along with 3D Realms' infamous humor.
Developer:  3D Realms
Release Date:  September 12, 1997
Source Code Release Date:  April 2, 2005
    DESC
  homepage "https://macsourceports.com/game/swarrior"

    app "Raze.app"

    postflight do
      puts <<~POSTFLIGHT
If you haven't already, make a "Raze" directory in your Documents directory, and then a "swarrior" directory under that. Copy the files from an existing installation of Shadow Warrior Classic into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
