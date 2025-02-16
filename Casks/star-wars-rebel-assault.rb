cask "star-wars-rebel-assault" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Star Wars: Rebel Assault"
  desc <<~DESC
Also known to people my age as that game that came with your new CD-ROM drive, Star Wars: Rebel Assault is a FMV-based rail shooter game set in the Star Wars universe. You take on the role of a new pilot recruit for the Rebel Alliance, tasked with completing a series of missions to stop the Empire's plans for galactic domination. The game features footage from the original Star Wars trilogy, along with a memorable score, intense dogfights, and thrilling set pieces, including the iconic Death Star trench run.
Developer:  LucasArts
Release Date:  November 1993
  DESC
  homepage "https://macsourceports.com/game/swrebelassault"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: Rebel Assault onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
