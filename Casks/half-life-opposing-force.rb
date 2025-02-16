cask "half-life-opposing-force" do
  version :latest
  sha256 "248b8590e5593658c9082304d9ee204555fd9a0a97f88909bb639d211a18d14c"

  url "https://github.com/MacSourcePorts/xash3d-fwgs/releases/download/v0.20-2025-01-26/Xash3D-FWGS-0.20.dmg"
  name "Half-Life: Opposing Force"
  desc <<~DESC
Half-Life: Opposing Force is the first expansion pack for Half-Life. It takes place during the events of the original game, but instead of playing as Gordon Freeman having a bad day at work you play from the perspective of one of the Marines sent into the complex. It was definitely an interesting maneuver, and one that avoided having to explain what happened after the end of the first game, they wouldn't go there until the sequel.NOTE: the support for Opposing Force as a Xash3D FWGS mod is still in development. You may notice quirks like glitches with weapon animations. For this reason I have labeled the game as "Early Access". If you're willing to ignore the issues you can go ahead and experience the expansion pack on your Mac again.IMPORTANT NOTE: If you used one of the previous builds of Xash3D FWGS that we hosted here on Mac Source Ports, note that the location of the data has changed from ~/Library/Application Support/Xash3D to ~/Library/Application Support/Xash3D FWGS. If you get an error about how the engine could not find the "valve" folder, this is why.
Developer:  Gearbox Software
Release Date:  November 19, 1999
  DESC
  homepage "https://macsourceports.com/game/halflifeopfor"

  app "Xash3D-FWGS.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Xash3D FWGS" directory. Copy the "valve" directory from an installation of Half-Life into it, alongside the "gearbox" directory from an installation of Half-Life: Opposing Force. From here Xash3D-FWGS.app should run and be able to find the data. You will then need to choose "Custom Game" and choose Opposing Force from the menu. That will restart the game in Opposing Force mode.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
