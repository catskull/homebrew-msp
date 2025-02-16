cask "day-of-the-tentacle" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Day of the Tentacle"
  desc "Day of the Tentacle is a point-and-click adventure game that takes place across three different time periods. You take on the roles of three characters, Bernard, Hoagie, and Laverne, who must work together to prevent an evil, sentient tentacle from taking over the world. The game features challenging puzzles, zany humor, and memorable characters, including a mad scientist, a talking toilet, and a founding father of the United States. It was the eighth game to use the SCUMM engine.NOTE: The source ports listed below need the data from the original game, but most modern digital retailers only sell the Remastered Edition, which does not work with these source ports.
Developer:  LucasArts
Release Date:  June 25, 1993"
  homepage "https://macsourceports.com/game/dott"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Day of the Tentacle onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
