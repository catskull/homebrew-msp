cask "catacomb-apocalypse" do
  version :latest
  sha256 "e12a1b5dc9924528211918c6e1dc3d8e5db1e6ba8200d0b9ec6f661f76721ed8"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/ReflectionHLE-0.44.0/reflectionhle-20240926.dmg"
  name "Catacomb Apocalypse"
  desc "The final game in the Catacombs series mixes things up a bit by being set in the distant future. It features fantasy and sci-fi elements mixed together and pits you against robots and so forth. It also reintroduces the hub system from the first game. So in case you needed even more EGA FPS in your life, here's your hookup.
Developer:  Softdisk
Release Date:  1993
Source Code Release Date:  June 9, 2014"
  homepage "https://macsourceports.com/game/catacombapocalypse"

  app "reflectionhle.app"

  postflight do
    puts <<~POSTFLIGHT
      Install reflectionhle.app wherever you choose. When running the app, maneuver through the menus to locate a folder with the Catacomb Apocalypse data files in it. From there it should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
