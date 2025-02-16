cask "catacomb-armageddon" do
  version :latest
  sha256 "e12a1b5dc9924528211918c6e1dc3d8e5db1e6ba8200d0b9ec6f661f76721ed8"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/ReflectionHLE-0.44.0/reflectionhle-20240926.dmg"
  name "Catacomb Armageddon"
  desc <<~DESC
By now you know the drill - Catacomb Armageddon is the third game in the Catacombs series and the second entry in the Catacombs Adventures series. This time around the setting is "present day". There's some tech upgrades and added variety as a result, but for the most part this game is just more of the previous two, for better or worse.
Developer:  Softdisk
Release Date:  1993
Source Code Release Date:  June 9, 2014
  DESC
  homepage "https://macsourceports.com/game/catacombarmageddon"

  app "reflectionhle.app"

  postflight do
    puts <<~POSTFLIGHT
      Install reflectionhle.app wherever you choose. When running the app, maneuver through the menus to locate a folder with the Catacomb Armageddon data files in it. From there it should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
