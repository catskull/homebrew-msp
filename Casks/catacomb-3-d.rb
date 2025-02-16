cask "catacomb-3-d" do
  version :latest
  sha256 "e12a1b5dc9924528211918c6e1dc3d8e5db1e6ba8200d0b9ec6f661f76721ed8"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/ReflectionHLE-0.44.0/reflectionhle-20240926.dmg"
  name "Catacomb 3-D"
  desc "When you have every other id Software source port on your site, all that's left is Catacomb 3-D. The story is detailed in books and articles but the gist is that the company we know as id Software started out as employees working for a Lousiana-based company called Softdisk.Similar to the path the Wolfenstein series took, John Carmack wrote a 2-D top-down game called Catacomb for the Apple II, followed by a sequel which is either named Catacomb II or The Catacomb depending on who tells the story. And then they decided to take the series into 3-D with Catacomb 3-DThe plot of the game is to navigate the catacombs of the local town cemetery to defeat the evil bad guy and rescue your friend. Whenever you run into an early game in a genre, you usually expect the game to be primitive compared to what came later, and it is, but it's much closer to Wolfenstein 3-D than I expected or remembered. It's rough around the edges and definitely held back by technology but you really do feel like you're playing a 3-D game with EGA graphics which had to be mind blowing in 1991 for the handful of people who ever got this game.
Developer:  id Software
Release Date:  November, 1991
Source Code Release Date:  June 9, 2014"
  homepage "https://macsourceports.com/game/catacomb3d"

  app "reflectionhle.app"

  postflight do
    puts <<~POSTFLIGHT
      Install reflectionhle.app wherever you choose. When running the app, maneuver through the menus to locate a folder with the Catacomb 3-D data files in it. From there it should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
