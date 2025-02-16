cask "doom-3" do
  version :latest
  sha256 "d28057f767cc146018afe2cf8f253b5fcf44f440e9ab7c73a4451aadf55fa536"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/dhewm3_1.5.4/dhewm3-1.5.4.dmg"
  name "DOOM 3"
  desc <<~DESC
DOOM 3 was the third game in the DOOM series, released in 2004. Support for the expansion pack Resurrection of Evil is also included.NOTE: Most retailers such as Steam and GOG are now selling DOOM 3 and DOOM 3: BFG Edition as a package together under the name DOOM 3 so buying that will get you both games.
Developer:  id Software
Release Date:  August 3, 2004
Source Code Release Date:  November 22, 2011
  DESC
  homepage "https://macsourceports.com/game/doom3"

  app "dhewm3.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/dhewm3/" directory. Copy the "base" directory from an existing installation of DOOM 3 into it. From here dhewm3.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
