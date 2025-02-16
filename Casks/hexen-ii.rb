cask "hexen-ii" do
  version :latest
  sha256 "ac0d0901b59dde21aad044835bc87ff056c31400f6745dd46fb9d655ac2b39a1"

  url "https://github.com/MacSourcePorts/uhexen2/releases/download/uHexen_1.5.9/uhexen2-1.5.9-gl.dmg"
  name "Hexen II"
  desc <<~DESC
Continuing the pattern of the first DOOM engine game being a fantasy RPG FPS from Raven Software, the first Quake engine game is another fantasy RPG FPS from Raven Software. Hexen II continues its predecessors pattern of multiple character classes, a hub based structure, and then-innovative use of 3D environments. It's a pretty solid old school FPS experienceNOTE: At this time, this source port has issues with being built for Apple Silicon so I'm only doing an Intel build of the OpenGL version. The Software-based version is Universal2.ALSO NOTE: A small percentage of the time the OpenGL version of the game might fail to launch, and I'm looking into why. Try again and it should work.
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
