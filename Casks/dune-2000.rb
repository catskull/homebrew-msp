cask "dune-2000" do
  version :latest
  sha256 "da81dfcfab8287f21127827e029a0553bde08207a15656393c9e3c1d6341d3c4"

  url "https://github.com/OpenRA/OpenRA/releases/download/release-20231010/OpenRA-release-20231010.dmg"
  name "Dune 2000"
  desc <<~DESC
A partial remake of Dune II, itself considered the earliest example of the mold that later RTS games would follow, Dune 2000 was initially released for PCs in 1998 and the PlayStation in 1999.Dune 2000 is not currently available via any digital distribution sales channels but OpenRA can download a subset of data to get going. Installing the full game's data from a disc is also supported.
Developer:  Intelligent Games
Release Date:  September 4, 1998
  DESC
  homepage "https://macsourceports.com/game/dune2000"

  app "OpenRA - Dune 2000.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the apps anywhere you want (the DMG includes app bundles for three games). On first run the game will prompt you to either download a basic data set from an EA freeware release, or you can provide an install disc for the rest of the data. The OpenRA site also has more advanced options available.
    POSTFLIGHT
  end
end
