cask "zak-mckracken--the-alien-mindbenders" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Zak McKracken & the Alien Mindbenders"
  desc "Zak McKracken & the Alien Mindbenders is a point-and-click adventure game that follows the journey of a journalist who uncovers a plot by aliens to take over the world using mind control. With the help of his team, he must solve puzzles and travel across the globe to stop the alien invasion. The game is known for its quirky humor, creative puzzles, and memorable characters. It was the second game to use the SCUMM engine.
Developer:  Lucasfilm Games
Release Date:  October 1988"
  homepage "https://macsourceports.com/game/zakmckracken"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Zak McKracken & the Alien Mindbenders onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
