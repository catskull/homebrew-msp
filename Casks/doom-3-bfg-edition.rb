cask "doom-3-bfg-edition" do
  version :latest
  sha256 "40c10b04cce7e2f609fe94306abd9ce27c89583622814c69c26504a243d0ecd2"

  url "https://github.com/MacSourcePorts/RBDOOM-3-BFG/releases/download/1.4.0/RBDoom3BFG-1.4.0.dmg"
  name "DOOM 3: BFG Edition"
  desc "DOOM 3: BFG Edition was a 2012 re-release of DOOM 3 with enhanced graphics and an additional episode.NOTE: Most retailers such as Steam and GOG are now selling DOOM 3 and DOOM 3: BFG Edition as a package together under the name DOOM 3 so buying that will get you both games.
Developer:  id Software
Release Date:  October 16, 2012
Source Code Release Date:  November 26, 2012"
  homepage "https://macsourceports.com/game/doom3bfg"

  app "RBDoom3BFG.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/RBDOOM-3-BFG/" directory. Copy the "base" directory from an existing installation of DOOM 3: BFG Edition into it. From here RBDoom3BFG.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
