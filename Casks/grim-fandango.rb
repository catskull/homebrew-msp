cask "grim-fandango" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Grim Fandango"
  desc "Grim Fandango is a unique point-and-click adventure game set in the Land of the Dead, where souls journey after they pass on from the world of the living. You take on the role of Manny Calavera, a travel agent for the Department of Death, who must unravel a conspiracy involving corruption within the underworld. The game features a unique blend of film noir and Aztec mythology, along with a memorable cast of characters, including the femme fatale Meche Colomar and the demon driver Glottis. With its innovative art style, engaging storyline, and challenging puzzles, Grim Fandango is a masterpiece of the adventure game genre and a must-play for fans of the genre. It was the first game to use the GrimE engine.NOTE: The source ports listed below need the data from the original game, but most modern digital retailers only sell the Remastered Edition, which does not work with these source ports.
Developer:  LucasArts
Release Date:  October 30, 1998"
  homepage "https://macsourceports.com/game/grimfandango"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Grim Fandango onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
