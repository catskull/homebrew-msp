cask "candy-crisis" do
  version :latest
  sha256 "4c3359332d950e2836f9279c8ed1cb32e3c271e5dccb182134364976b4ef2095"

  url "https://github.com/jorio/CandyCrisis/releases/download/v3.0.0/CandyCrisis-3.0.0-mac.dmg"
  name "Candy Crisis"
  desc <<~DESC
    Candy Criis is an old shareware game smilar to the Puyo Puyo series where you match different colored candy pieces in pairs to form groups and clear them from the board. It was a Mac-exclusive cult classic shareware game in the 90's later ported to Windows. It's also the one Iliyas Jorio source port that I missed up until now as it wasn't on his itch.io which mostly highlights his Pangea Software ports.This is the full game, no extra data needed, so you can download and play it immediately.
Developer:  John Stiles
Release Date:  1996
Source Code Release Date:  December 31, 2015
DESC
homepage "https://macsourceports.com/game/candycrisis"

  app "Candy Crisis.app"

  postflight do
    puts <<~POSTFLIGHT
      Download the DMG file and extract the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
