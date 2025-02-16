cask "star-wars-tie-fighter" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Star Wars: TIE Fighter"
  desc "From a time when it seemed LucasArts could do no wrong, Star Wars: TIE Fighter is a space simulation game that flips the script on the original Star Wars trilogy, putting you in the role of a TIE Fighter pilot for the Galactic Empire. You must complete a series of missions that involve defending the Empire's interests, hunting down Rebel Alliance targets, and engaging in tense dogfights with enemy ships. The game features a deep and engaging storyline, a variety of ship upgrades and weapons, and detailed graphics and sound effects that bring the Star Wars universe to life. With its challenging gameplay, complex strategy, and innovative features, Star Wars: TIE Fighter is another true classic of the space simulation genre.
Developer:  LucasArts
Release Date:  July 10, 1994"
  homepage "https://macsourceports.com/game/swtiefighter"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Star Wars: TIE Fighter onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
