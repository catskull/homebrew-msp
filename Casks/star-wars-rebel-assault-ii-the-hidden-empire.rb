cask "star-wars-rebel-assault-ii-the-hidden-empire" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Star Wars: Rebel Assault II: The Hidden Empire"
  desc <<~DESC
Star Wars: Rebel Assault II: The Hidden Empire is another rail shooter game set in the Star Wars universe. You once again take on the role of a Rebel Alliance pilot, this time investigating a new threat posed by a hidden Imperial army. The game features a combination of live-action footage and computer-generated graphics, along with a memorable score, intense dogfights, and exciting set pieces, including a thrilling speeder bike chase. With its fast-paced action and immersive visuals, Star Wars: Rebel Assault II: The Hidden Empire is a worthy follow-up to the original Rebel Assault.
Developer:  LucasArts
Release Date:  November 1995
  DESC
  homepage "https://macsourceports.com/game/swrebelassault2"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: Rebel Assault II: The Hidden Empire onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
