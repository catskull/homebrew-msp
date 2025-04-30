cask "glider-pro" do
  version :latest
  sha256 "eec0e82b2c6a8ab05c085d91ac6a8c5d88ad4202138eaac22784c000185a151d"

  url "https://github.com/elasota/Aerofoil/releases/download/1.1.0/Aerofoil-1.1.0-macOS.zip"
  name "Glider PRO"
  desc <<~DESC
    There's this fascinating book called The Secret History of Mac Gaming, which chronicles what gaming on the Mac was like prior to Mac OS X, back before 3D graphics were a thing and people were exploring what to do with this 512x342 graphics screen. An entire chapter titled "Quintessentially Mac" is dedicated John Calhoun and his games, in particular Glider.Glider was one of those deceptively simple games - you maneuver a paper airplane through a house. Things like air conditioner vents and candles provide methods of keeping it aloft, and there's certain items you need to hit, and others you need to avoid. I'm going to confess that as I wasn't a Mac person back in the day I wasn't familiar with this game, but amongst those who were, Glider is a game treated with the same reverence as DOOM.Being in the era when games when treated more like software than entertainment products there was the original Glider, then later a version for color Macs called Glider 4.0 that included a level editor, then a version that added more elements and was sold retail in a box called Glider PRO. In the years since the source code was released and Eric Lasota ported the game to modern systems, including Apple Silicon. It includes both the level editor as well as a simulated version of what it was like to play this on a Classic Macintosh. This is the full game so you can download and play it immediately.
Developer:  John Calhoun
Release Date:  1994
Source Code Release Date:  2016
DESC
homepage "https://macsourceports.com/game/gliderpro"

  app "Aerofoil.app"

  postflight do
    puts <<~POSTFLIGHT
      Download the DMG file and extract the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
