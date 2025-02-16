cask "star-wars-x-wing" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Star Wars: X-Wing"
  desc "Star Wars: X-Wing is a space simulation game that puts you in the cockpit of an X-Wing fighter as they participate in the galactic conflict between the Rebel Alliance and the Empire. You must complete a series of missions that involve engaging in intense dogfights, escorting ships, and disabling enemy bases. The game features a realistic physics engine, a variety of weapons and ship upgrades, and detailed graphics and sound effects that immerse players in the Star Wars universe. With its challenging gameplay, charming user interface, rich storyline, and innovative features, Star Wars: X-Wing is a true classic of the space simulation genre.
Developer:  LucasArts
Release Date:  January 2, 1994"
  homepage "https://macsourceports.com/game/swxwing"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: X-Wing onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
