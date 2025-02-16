cask "half-life" do
  version :latest
  sha256 "248b8590e5593658c9082304d9ee204555fd9a0a97f88909bb639d211a18d14c"

  url "https://github.com/MacSourcePorts/xash3d-fwgs/releases/download/v0.20-2025-01-26/Xash3D-FWGS-0.20.dmg"
  name "Half-Life"
  desc "For the 100th game on Mac Source Ports, I wanted it to be something special. It turned out to be a quite a doozy as well.It's not an overstatement to say Half-Life changed everything. It challenged what we thought first person shooters, narrative content, and gaming atmosphere in general were capable of. It spawned spinoffs, sequels, and launched Valve software into the massive force it is today. It says something that in a world filled with tons of games to choose from, everyone is still begging Valve to make another entry in this series to tie off the now fifteen-year cliffhanger of Half-Life 2: Episode Two.Half-Life and the Mac have an interesting history, as well. Long before Steam was even a thought in their head, Valve announced and began work on porting the game to Mac OS 9, but it was eventually canceled. Then in 2013, Valve decided to release Steam for the Mac, the first non-Windows computer platform for it, and ported their games to Steam in the process, so now finally Half-Life was available on the Mac. However, the releases were 32-bit apps so when macOS 10.15 Catalina cut off support for 32-bit apps, Half-Life became unavailable to anyone who upgraded, and Apple Silicon Macs never had a chance to play it.Meanwhile, a project arose called Xash3D. Since the engine for Half-Life, now retronymed GoldSrc for various reasons, was derived from Quake and Quake II, and the SDK for mods was also available, theoretically someone could reverse engineer the game with a lot of effort. The Xash3D project and the later successor project, Xash3D FWGS, appear to have done exactly that over the course of many years now. The result is a fascinating Frankenstein project meshing various id Tech engines and source ports together, the net effect of which is Half-Life can be played on everything from an Android phone to a Raspberry Pi. In 2019, the Xash3D FWGS project dropped any official support for macOS and iOS due to Apple's deprecation of OpenGL and decision to move towards signed and notarized code (they have since restored support). As a result, I've had many people ask me to build this project so I figured I'd eventually do it and the one year anniversary of the site and the 100th game seemed appropriate to me. However the one year anniversary of the site was a month ago, but if there's an appropriate project for Valve Time to affect, it would be this one. They're waiting for you. In the test chamber...IMPORTANT NOTE: If you used one of the previous builds of Xash3D FWGS that we hosted here on Mac Source Ports, note that the location of the data has changed from ~/Library/Application Support/Xash3D to ~/Library/Application Support/Xash3D FWGS. If you get an error about how the engine could not find the "valve" folder, this is why.
Developer:  Valve Software
Release Date:  November 19, 1998"
  homepage "https://macsourceports.com/game/halflife"

  app "Xash3D-FWGS.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Xash3D FWGS" directory. Copy the "valve" directory from an installation of Half-Life into it. From here Xash3D-FWGS.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
