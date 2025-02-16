cask "indiana-jones-and-the-fate-of-atlantis" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Indiana Jones and the Fate of Atlantis"
  desc "Indiana Jones and the Fate of Atlantis is a point-and-click adventure game that takes place in the world of Indiana Jones in an original story. You take on the role of Indiana Jones as he sets out to find the lost city of Atlantis before it falls into the wrong hands. Along the way, you must solve puzzles, interact with a variety of interesting characters, and explore exotic locations across the globe. The game features multiple paths and endings, adding to its replay value, and is known for its immersive storyline, engaging puzzles, and well-developed characters. It was the seventh game to use the SCUMM engine.
Developer:  LucasArts
Release Date:  June 1, 1992"
  homepage "https://macsourceports.com/game/indyfateofatlantis"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Indiana Jones and the Fate of Atlantis onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
