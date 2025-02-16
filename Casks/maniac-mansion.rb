cask "maniac-mansion" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Maniac Mansion"
  desc "Maniac Mansion is a point-and-click adventure game following a group of teenagers who venture into a mysterious mansion to rescue one of their friends from the clutches of an evil mad scientist. You must explore the mansion, solve puzzles, and interact with a variety of quirky characters in order to progress through the game. With its wacky humor, innovative gameplay mechanics, and multiple endings, Maniac Mansion remains a beloved and influential title in the history of video games. It was also the first game to use the new SCUMM engine, its name derived from Script Creation Utility for Maniac Mansion.
Developer:  Lucasfilm Games
Release Date:  October 5, 1987"
  homepage "https://macsourceports.com/game/maniacmansion"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Maniac Mansion onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
