  cask "quake-ii" do
    version :latest
    sha256 "da3a0026126acb515b6f9341823639248e3f4798ec7d01ce287d1974863ec4cf"

    url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/yquake2_8.50/yquake2-8.50.dmg"
    name "Quake II"
    desc <<~DESC
Quake II is a first-person shooter, the second in the Quake series. Yamagi Quake2 is the most mature and advanced port actively being maintained.
Developer:  id Software
Release Date:  December 9, 1997
Source Code Release Date:  December 22, 2001
    DESC
  homepage "https://macsourceports.com/game/quake2"

    app "yquake2.app"

    postflight do
      puts <<~POSTFLIGHT
If you haven't already, make a "~/.yq2/" directory (you may need to do this in Terminal). Copy the "baseq2" folder from an existing installation of Quake II into it. From here yquake2.app should run and be able to find the data for the game.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
