cask "full-throttle" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Full Throttle"
  desc "Full Throttle is a point-and-click adventure game that follows the story of Ben Throttle, the leader of a biker gang known as the Polecats. When a rival gang frames Ben for murder, he must clear his name and uncover a larger conspiracy involving the corrupt corporation, Corley Motors. The game features a memorable cast of characters, including the feisty mechanic, Maureen, and the villainous Adrian Ripburger, as well as intense action sequences, including high-speed motorcycle chases. It was the tenth game to use the SCUMM engine.NOTE: The source ports listed below need the data from the original game, but most modern digital retailers only sell the Remastered Edition, which does not work with these source ports.
Developer:  LucasArts
Release Date:  April 30, 1995"
  homepage "https://macsourceports.com/game/fullthrottle"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Full Throttle onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
