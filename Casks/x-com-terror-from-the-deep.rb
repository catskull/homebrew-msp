cask "x-com-terror-from-the-deep" do
  version :latest
  sha256 "e6b951a70dd2674da9ef596b1d3c578375a2fea29e572654ccf44987c67955d0"

  url "https://github.com/MacSourcePorts/OpenXcom/releases/download/v1.0/OpenXcom-1.0.dmg"
  name "X-COM: Terror from the Deep"
  desc <<~DESC
X-COM: Terror from the Deep is the sequel to X-COM: UFO Defense, with the aliens attacking Earth again, but this time they're invading the oceans, sending most of the game underwater for a change.NOTE: If you have the data from both X-COM: UFO Defense/UFO: Enemy Unknown and X-COM: Terror from the Deep, you can use the "Mods" menu in the game to switch between the two.
Developer:  MicroProse
Release Date:  June 1, 1995
  DESC
  homepage "https://macsourceports.com/game/xcomtftd"

  app "OpenXcom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenXcom" directory. Copy the TFD or TFTD folder from an installation of X-COM: Terror from the Deep into it, and rename it "TFTD" if it's not already. From here openxcom.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
