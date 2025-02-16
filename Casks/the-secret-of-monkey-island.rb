cask "the-secret-of-monkey-island" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "The Secret of Monkey Island"
  desc "The Secret of Monkey Island is a legendary point-and-click adventure game that tells the story of Guybrush Threepwood, a young man who dreams of becoming a pirate. You must guide Guybrush through a series of hilarious and challenging quests on the mysterious Monkey Island, where he must rescue his love interest and defeat the evil pirate LeChuck. With its witty humor, memorable characters, and clever puzzles, The Secret of Monkey Island is a true classic of the adventure game genre that has stood the test of time and it kicked off the Monkey Island franchise, whose entries still appear to this day. It was the fifth game to use the SCUMM engine.NOTE: The source ports listed below need the data from the original game, but most modern digital retailers only sell the Special Edition, which does not work with these source ports.
Developer:  Lucasfilm Games
Release Date:  October 1990"
  homepage "https://macsourceports.com/game/secretofmonkeyisland"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of The Secret of Monkey Island onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
