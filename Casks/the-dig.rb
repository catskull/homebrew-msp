cask "the-dig" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "The Dig"
  desc "The Dig is a point-and-click adventure game that follows the story of a team of astronauts who travel to an asteroid to investigate a mysterious signal from an alien artifact. As they explore the artifact, they uncover a complex and ancient civilization, leading to a series of challenging puzzles and moral dilemmas. Another entry in the list of games I’ve yet to play but remember because of the cover art and title, the game is notable for being inspired by an idea originally created for Steven Spielberg's Amazing Stories series and it features immersive, atmospheric visuals, an engaging storyline, and memorable characters, including the stoic Commander Low, the hot-headed journalist Maggie, and the eccentric scientist Brink. It was the eleventh game to use the SCUMM engine.
Developer:  LucasArts
Release Date:  November 30, 1995"
  homepage "https://macsourceports.com/game/thedig"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of The Dig onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
