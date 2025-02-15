cask "moh-aa" do
  version "0.81.1"
  sha256 "5a4996e8e70ee8f41604a9dfce39bc45e86a59e5903b2fab8091040789696c8f"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenMoHAA_#{version}/openmohaa-#{version}.dmg"
  name "Medal of Honor: Allied Assault (OpenMoHAA)"
  desc "Open source reimplementation of Medal of Honor: Allied Assault"
  homepage "https://github.com/MacSourcePorts/OpenMoHAA"

  app "OpenMoHAA.app"

  zap trash: [
    "~/Library/Application Support/OpenMoHAA",
    "~/Library/Preferences/org.openmohaa.plist",
    "~/Library/Saved Application State/org.openmohaa.savedState",
  ]

  caveats <<~EOS
    Buy Medal of Honor: Allied Assault on GOG.com: https://af.gog.com/game/medal_of_honor_allied_assault_war_chest?as=1692164182

    Installataion instructions:
    If you haven't already, make a "~/Library/Application Support/openmohaa/" directory. Copy the "main" directory from an existing installation of Medal of Honor: Allied Assault into it (and optionally the "mainta" and "maintt" folders from the expansions) From here openmohaa.app should run and be able to find the data.
  EOS
end
