cask "x-com-ufo-defense" do
  version :latest
  sha256 "e6b951a70dd2674da9ef596b1d3c578375a2fea29e572654ccf44987c67955d0"

  url "https://github.com/MacSourcePorts/OpenXcom/releases/download/v1.0/OpenXcom-1.0.dmg"
  name "X-COM: UFO Defense"
  desc "X-COM: UFO Defense (released as UFO: Enemy Unknown in European territories) is a turn-based game blending elements of science fiction, strategy, and management simulation. The game enjoys a legendary status amongst 1990's gamers and garnered multiple sequels and a recent series of rebooted games.NOTE: If you have the data from both X-COM: UFO Defense/UFO: Enemy Unknown and X-COM: Terror from the Deep, you can use the "Mods" menu in the game to switch between the two.
Developer:  Mythos Games
Release Date:  March 1, 1994"
  homepage "https://macsourceports.com/game/xcomufo"

  app "OpenXcom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenXcom" directory. Copy the XCOM folder from an installation of X-COM: UFO Defense into it, and rename it "UFO" (it may be the case that in areas where it is sold as UFO: Enemy Unknown the source folder is already named "UFO"). From here openxcom.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
