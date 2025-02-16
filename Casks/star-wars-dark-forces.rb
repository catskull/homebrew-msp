cask "star-wars-dark-forces" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Star Wars: Dark Forces"
  desc <<~DESC
The first entry in the series, Star Wars: Dark Forces is a first-person shooter game set in the Star Wars universe with an engine similar to DOOM. You take on the role of Kyle Katarn, a former Imperial officer turned Rebel Alliance mercenary, as he investigates a new Imperial weapon known as the Dark Trooper. The game features a variety of weapons, levels, and enemies, along with detailed graphics and sound effects that bring the Star Wars universe to life.
Developer:  LucasArts
Release Date:  February 28, 1995
  DESC
  homepage "https://macsourceports.com/game/swdf"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: Dark Forces onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
