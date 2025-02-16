cask "outlaws" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Outlaws"
  desc <<~DESC
The second half of the 90's saw the first person shooter genre open up enough to start exploring different types of settings, something other than gothic dungeons and space bases. Outlaws is an early example of a FPS set in the American Wild West. Using the same engine as the original Star Wars: Dark Forces, it features old firearms and a user interface germane to the primitive arcade machines of the day. The game had a free expansion, A Handful of Missions which is included with the digital distribution versions of the game.
Developer:  Lucasfilm Games
Release Date:  April 7, 1997
  DESC
  homepage "https://macsourceports.com/game/outlaws"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: Dark Forces onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
