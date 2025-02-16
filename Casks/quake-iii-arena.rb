cask "quake-iii-arena" do
  version :latest
  sha256 "234d76c923e91276226f8f34f793efc7e4088a133658973fc57324c314e39223"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/ioq3_1.36_2024-10-12/ioquake3-1.36.dmg"
  name "Quake III: Arena"
  desc <<~DESC
Quake III Arena is a first-person shooter, the first in the Quake series to focus on multiplayer. The ioquake3 source port has been maintained since the original source code release in 2005, featuring a Universal 2 app that supports Intel 64-bit and Apple Silicon as well as a Universal 1 app that can support Intel and PowerPC Macs going back to Mac OS X 10.6
Developer:  id Software
Release Date:  December 2, 1999
Source Code Release Date:  August 9, 2005
  DESC
  homepage "https://macsourceports.com/game/quake3arena"

  app "ioquake3.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Quake3/" directory. Copy the "baseq3" directory from an existing installation of Quake III: Arena into it. From here ioquake3.app should run and be able to find the data. If it can't, it will prompt you.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
