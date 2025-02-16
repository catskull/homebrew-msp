cask "indiana-jones-and-the-infernal-machine" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Indiana Jones and the Infernal Machine"
  desc <<~DESC
When Tomb Raider came out, more than a few people compared the vibe to that of Indiana Jones, with the exploration and puzzle solving and action elements, a comparison exacerbated by the very uneven history of Indiana Jones games which ranged from excellent adventure games to mediocre side scrollers. So naturally the next step was to make a Tomb Raider game in the Indiana Jones universe. As a bonus it shipped as a Nintendo 64 exclusive, serving that market since the Tomb Raider franchise was a PlayStation exclusive.
Developer:  Lucasfilm Games
Release Date:  November 15, 1999
  DESC
  homepage "https://macsourceports.com/game/indyinfernalmachine"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Indiana Jones and the Infernal Machine onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
