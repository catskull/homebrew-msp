cask "star-wars-shadows-of-the-empire" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Star Wars: Shadows of the Empire"
  desc <<~DESC
Released as part of a multimedia project encompassing books, comic books and toys, Star Wars: Shadows of the Empire launched in 1996 for the Nintendo 64. It featured multiple different modes of gameplay including an impressive opening mission flying on Hoth, third person combat and vehicular levels.
Developer:  Lucasfilm Games
Release Date:  December 3, 1996
  DESC
  homepage "https://macsourceports.com/game/swsote"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: Shadows of the Empire onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
