cask "descent" do
  version :latest
  sha256 "3acf6f40f956416f568d6c573a3c32d9940ca3a73477426b1e354447bf661b74"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/DXX-Rebirth_0.60/D1X-Rebirth-0.6.0.dmg"
  name "Descent"
  desc <<~DESC
While the gaming world was in a rush to make FPS games to compete with DOOM, Interplay and Parallax took a different approach and turned things upside down with Descent. Literally. Instead of a grounded marine with a gun you were in a spaceship with six degrees of freedom. The result was an addictive if disorienting game that still holds up today.NOTE: The DXX-Rebirth project builds into separate executables for Descent and Descent II. To play both games you will need to download both apps.
Developer:  Parallax Software
Release Date:  March 17, 1995
Source Code Release Date:  January 12, 1998
  DESC
  homepage "https://macsourceports.com/game/descent"

  app "D1X-Rebirth.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Preferences/D1X Rebirth" directory. Copy the files from an installation of Descent into it. From here D1X-Rebirth.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
