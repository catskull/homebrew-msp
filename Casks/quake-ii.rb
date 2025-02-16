cask "quake-ii" do
  version :latest
  sha256 "e896452c1a2eee82670c9964138448ee13d0bff198475853fc02989f56dfaff4"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/yquake2_8.41/yquake2-8.41.dmg"
  name "Quake II"
  desc "Quake II is a first-person shooter, the second in the Quake series. Yamagi Quake2 is the most mature and advanced port actively being maintained.
Developer:  id Software
Release Date:  December 9, 1997
Source Code Release Date:  December 22, 2001"
  homepage "https://macsourceports.com/game/quake2"

  app "yquake2.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/.yq2/" directory (you may need to do this in Terminal). Copy the "baseq2" folder from an existing installation of Quake II into it. From here yquake2.app should run and be able to find the data for the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
