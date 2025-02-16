cask "sam--max-hit-the-road" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Sam & Max Hit the Road"
  desc <<~DESC
Sam & Max Hit the Road is a point-and-click adventure game that follows the adventures of the freelance police, Sam and Max, as they set out to solve a case involving a missing carnival bigfoot. Along the way, you must explore various locations, solve puzzles, and interact with a variety of bizarre characters, including a talking tattoo and a country singer with a robotic arm. The game is known for its irreverent humor, quirky characters, and colorful graphics, as well as its creative use of inventory items to solve puzzles. It was the ninth game to use the SCUMM engine.
Developer:  LucasArts
Release Date:  November 1993
  DESC
  homepage "https://macsourceports.com/game/samandmax"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Sam & Max Hit the Road onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
