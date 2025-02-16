cask "monkey-island--lechucks-revenge" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Monkey Island 2: LeChuck's Revenge"
  desc <<~DESC
Monkey Island 2: LeChuck's Revenge is a point-and-click adventure game from LucasArts (formerly Lucasfilm Games, which it's now called again since Disney took over) that follows the further adventures of Guybrush Threepwood as he sets out to find the treasure of the legendary pirate, Big Whoop. Along the way, he must face off against his arch-nemesis, the zombie pirate LeChuck, and solve a series of challenging puzzles. The game features an immersive storyline, memorable characters, and a unique combination of humor and drama that has made it a fan favorite. It was the sixth game to use the SCUMM engine.NOTE: The source ports listed below need the data from the original game, but most modern digital retailers only sell the Special Edition, which does not work with these source ports.
Developer:  LucasArts
Release Date:  December 1991
  DESC
  homepage "https://macsourceports.com/game/monkeyisland2"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Monkey Island 2: LeChuck's Revenge onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
