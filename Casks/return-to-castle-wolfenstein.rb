cask "return-to-castle-wolfenstein" do
  version :latest
  sha256 "d1b89fb5208f56b547b380b4301c103e01ba45ac632418d679c36ad833ccca85"

  url "https://github.com/MacSourcePorts/iortcw/releases/download/iortcw-1.51d/iowolfsp-1.51d.dmg"
  name "Return to Castle Wolfenstein"
  desc <<~DESC
Return to Castle Wolfenstein is a fantastic single player game with lots of little touches you might have missed the first time around and that you don't see much anymore. Still abolutely worth firing up just to blast some Nazis. This source port also includes the multiplayer as a separate app, which still works on the servers running to this day.
Developer:  Grey Matter Interactive
Release Date:  November 19, 2001
Source Code Release Date:  August 12, 2010
  DESC
  homepage "https://macsourceports.com/game/rtcw"

  app "iowolfsp.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/RTCW/" directory. Copy the "Main" directory from an existing installation of Return to Castle Wolfenstein into it. From here iowolfsp.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
