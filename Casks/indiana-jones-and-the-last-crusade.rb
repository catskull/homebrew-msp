cask "indiana-jones-and-the-last-crusade" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Indiana Jones and the Last Crusade"
  desc <<~DESC
Although it may seem like a redundant title, Indiana Jones and the Last Crusade: The Graphic Adventure is one of at least two games tied in with the movie, the other being "The Action Game". As Indiana Jones you must solve puzzles, interact with characters, and explore various locations across the globe in this epic quest. The game is known for its immersive storyline, challenging puzzles, and memorable scenes from the iconic film. It was the third game to use the SCUMM engine.
Developer:  Lucasfilm Games
Release Date:  July 1989
  DESC
  homepage "https://macsourceports.com/game/indylastcrusade"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Indiana Jones and the Last Crusade: The Graphic Adventure onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
