cask "catacomb-abyss" do
  version :latest
  sha256 "e12a1b5dc9924528211918c6e1dc3d8e5db1e6ba8200d0b9ec6f661f76721ed8"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/ReflectionHLE-0.44.0/reflectionhle-20240926.dmg"
  name "Catacomb Abyss"
  desc <<~DESC
As mentioned previously, Catacomb 3-D was done by what would go on to be id Software for game publisher Softdisk. What might be less obvious today is that Softdisk published games via mail via a subscription. Think of it as a literal magazine on a diskette. Consequently they needed to crank out multiple games to keep subscriptions going.As a result, when id Software breaks out to make their own games, Softdisk decides to continue with the series and crank out a trilogy of sequels commonly referred to as the Catacomb Adventure series, the first of which is Catacomb Abyss.In the game you play as the same protagonist from the first game, hired by the townspeople to descend into the catacombs again and defeat evil minions. Really, it's just more of the first game, though with some more varied environments.
Developer:  Softdisk
Release Date:  1992
Source Code Release Date:  June 9, 2014
  DESC
  homepage "https://macsourceports.com/game/catacombabyss"

  app "reflectionhle.app"

  postflight do
    puts <<~POSTFLIGHT
      Install reflectionhle.app wherever you choose. When running the app, maneuver through the menus to locate a folder with the Catacomb Abyss data files in it. From there it should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
