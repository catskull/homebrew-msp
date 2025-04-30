cask "hexen-ii" do
  version :latest
  sha256 "74554a43e6a7edf208f48a9230f35e52d5d42e477b9eaa99433b73bc35769754"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/uHexen2_1.5.10-2025-04-23/uhexen2-1.5.10.dmg"
  name "Hexen II"
  desc <<~DESC
    Continuing the pattern of the first DOOM engine game being a fantasy RPG FPS from Raven Software, the first Quake engine game is another fantasy RPG FPS from Raven Software. Hexen II continues its predecessors pattern of multiple character classes, a hub based structure, and then-innovative use of 3D environments. It's a pretty solid old school FPS experience and the only id Tech 2 game to ship before Quake II
Developer:  Raven Software
Release Date:  September 11, 1997
Source Code Release Date:  November 10, 2000
DESC
homepage "https://macsourceports.com/game/hexen2"

  app "uhexen2.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Hexen2/" directory. Copy the "data1" folder from an installation of Hexen II into it. From there thr app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
