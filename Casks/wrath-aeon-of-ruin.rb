cask "wrath-aeon-of-ruin" do
  version :latest
  sha256 "7d38928677e732393b348f568d20bf824107c238cbe280dae958b155c1df28f8"

  url "https://github.com/MacSourcePorts/wrathplaces/releases/download/wrathplaces-1.12/wrathplaces-1.12.dmg"
  name "WRATH: Aeon of Ruin"
  desc "It's now official: WRATH: Aeon of Ruin is the newest game on this site because as of this writing it was fully released two days ago. Developed by KillPixel Games in conjunction with Irongate Slipworks, WRATH: Aeon of Ruin takes the concept of the retro boomer shooter one step further by actually using a game engine from that era: the DarkPlaces engine, derived from the original Quake engine, with a few parts of Quake III: Arena as well.Originally released in 2019 as Early Access, the full release was finally released in February 2024. While the developer lists the Mac as a supported platform, the game is currently Windows-only but the use of DarkPlaces engine means the source code is available from day one.At Mac Source Ports, we previously hosted a build of wrathplaces that would run with the Early Access version of the game, but the final released version featured enough changes that the build no longer works so I incorporated the changes. If you downloaded the previous release, you will need to update to the build below to work with the full version of the game.NOTE: The game now features achivements but for obvious reasons our build is unable to tie into GOG or Steam to claim them.
Developer:  KillPixel Games, Slipgate Ironworks
Release Date:  February 27, 2024
Source Code Release Date:  February 27, 2024"
  homepage "https://macsourceports.com/game/wrath"

  app "wrathplaces.app"

  postflight do
    puts <<~POSTFLIGHT
      Copy wrathplaces.app into a folder, then place the "kp1" folder from an installation of WRATH: Aeon of Ruin into that same folder (so, wrathplaces.app and the kp1 directory should be side by side). From here wrathplaces.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
