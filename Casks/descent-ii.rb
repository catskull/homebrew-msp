cask "descent-ii" do
  version :latest
  sha256 "d3ccd0d8e3e5e230903ec76624834e5abe90d1ea4a2e48c079f18b30e9edd26e"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/DXX-Rebirth_0.60/D2X-Rebirth-0.6.0.dmg"
  name "Descent II"
  desc "Released during the stretch in the 90's when it wasn't uncommon to release a game sequel just a year later that was simultaneously more of the same and yet considerably more ambitious, Descent II is exactly as advertised - shipping on CD-ROM with an impressive for the time series of video cutscenes it essentially improves on everything about the original.NOTE: The DXX-Rebirth project builds into separate executables for Descent and Descent II. To play both games you will need to download both apps.
Developer:  Parallax Software
Release Date:  March 13, 1996
Source Code Release Date:  January 12, 1998"
  homepage "https://macsourceports.com/game/descent2"

  app "D2X-Rebirth.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Preferences/D2X Rebirth" directory. Copy the files from an installation of Descent II into it. From here D1X-Rebirth.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
