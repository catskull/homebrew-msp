cask "rollercoaster-tycoon-2" do
  version :latest
  sha256 "3ae6d17eef586ff88d16e81e93ff2ce7c3300a9d89873526dcbbdb57ab24d6d1"

  url "https://github.com/OpenRCT2/OpenRCT2/releases/download/v0.4.18/OpenRCT2-v0.4.18-macos-universal.zip"
  name "RollerCoaster Tycoon 2"
  desc <<~DESC
    Another game from the mind of Chris Sawyer, RollerCoaster Tycoon 2 shares the same pixel art style and hardcore interface as his other games.
Developer:  Chris Sawyer
Release Date:  October 15, 2002
DESC
homepage "https://macsourceports.com/gamepage"

  app "OpenRCT2.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the OpenRCT2.app bundle to wherever you want and run it. On first run it will prompt you for the data files from a RollerCoaster Tycoon 2 instance.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
