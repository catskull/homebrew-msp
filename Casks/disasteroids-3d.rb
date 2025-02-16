cask "disasteroids-3d" do
  version :latest
  sha256 "744279a334bb13992a471077b211e3d6026e23045acae55ded72a9bd20408bed"

  url "https://github.com/MacSourcePorts/disasteroids3d/releases/download/1.4.0/disasteroids3d-1.4.0.dmg"
  name "Disasteroids 3D"
  desc "Disasteroids 3D is a unique release on Mac Source Ports for a few reasons. For starters, it's a full game. No need to buy anything, no need to put files in special places, it's a freeware game from 2000 that includes all the data you need. In addition, it's also available on the Mac App Store, also for free, where it's a Universal Purchase that includes ports for iOS and tvOS. And the reason I know this is because I put it there. Author Thom Wetzel released this game as freeware for Windows in 2000. Last year I ported it to SDL and got it running on the Mac. And then to iOS and tvOS. We agreed that it should remain free. So, if you want to download it from here as a signed and notarized build, you can. If you want to play with the source we have both a command-line build as well as an Xcode project which also contains the iOS and tvOS builds. Oh, and it also builds for Linux if that's your thing.
Developer:  Thom Wetzel
Release Date:  April 24, 2000
Source Code Release Date:  April 24, 2000"
  homepage "https://macsourceports.com/game/disasteroids3d"

  app "disasteroids3d.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and play. This is a free game that is self contained.
    POSTFLIGHT
  end
end
