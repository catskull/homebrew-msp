cask "loom" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Loom"
  desc "Loom is a point-and-click adventure game that takes place in a world where music is magic. You take on the role of Bobbin Threadbare, a young weaver who must use his musical skills to save his world from destruction. The game's unique mechanic involves learning and playing musical "drafts" to solve puzzles and progress through the story. With its enchanting storyline, captivating music, and innovative gameplay, Loom remains a beloved title in the history of adventure games. It’s also on my short list of games I have yet to play and yet stick in my mind because of the intriguing title and cover art from an era when Lucasfilm Games did more than movie tie-ins. It was the fourth game to use the SCUMM engine.
Developer:  Lucasfilm Games
Release Date:  January 1990"
  homepage "https://macsourceports.com/game/loom"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Loom onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
