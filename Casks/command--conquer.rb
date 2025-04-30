cask "command--conquer" do
  version :latest
  sha256 "2a78cd58603fd06ed6006ae5916065455a7ac7c1290dba1d06c0292bad4238ab"

  url "https://github.com/OpenRA/OpenRA/releases/download/release-20250330/OpenRA-release-20250330.dmg"
  name "Command & Conquer"
  desc <<~DESC
    Command & Conquer is a pioneering real-time strategy game set in an alternate history where two globalized forces fight for control of a mysterious resource. Featuring modern warfare, rocking music and cheesy cutscenes, there's a reason it's a cult classic to this day.OpenRA can download a subset of data from a freeware release to get going quickly, but installing the full game's data from a disc is also supported.
Developer:  Westwood Studios
Release Date:  September 26, 1995
DESC
homepage "https://macsourceports.com/game/cnc"

  app "OpenRA - Dune 2000.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the apps anywhere you want (the DMG includes app bundles for three games). On first run the game will prompt you to either download a basic data set from an EA freeware release, or you can provide an install disc for the rest of the data. The OpenRA site also has more advanced options available.
    POSTFLIGHT
  end
end
