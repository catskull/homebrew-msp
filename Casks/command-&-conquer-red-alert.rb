cask "command-&-conquer-red-alert" do
  version :latest
  sha256 "da81dfcfab8287f21127827e029a0553bde08207a15656393c9e3c1d6341d3c4"

  url "https://github.com/OpenRA/OpenRA/releases/download/release-20231010/OpenRA-release-20231010.dmg"
  name "Command & Conquer: Red Alert"
  desc <<~DESC
Released about a year after the original game Command & Conquer: Red Alert is a prequel that features fighting an aggressive Soviet Union trying to take over Europe. Doubling down on the modern warfare, rocking music and cheesy cutscenes of the original, this sequel is a fan favorite.OpenRA can download a subset of data from a freeware release to get going quickly, but installing the full game's data from a disc is also supported.
Developer:  Westwood Studios
Release Date:  November 22, 1996
  DESC
  homepage "https://macsourceports.com/game/cncra"

  app "OpenRA - Dune 2000.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the apps anywhere you want (the DMG includes app bundles for three games). On first run the game will prompt you to either download a basic data set from an EA freeware release, or you can provide an install disc for the rest of the data. The OpenRA site also has more advanced options available.
    POSTFLIGHT
  end
end
