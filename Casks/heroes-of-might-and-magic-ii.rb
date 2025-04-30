cask "heroes-of-might-and-magic-ii" do
  version :latest
  sha256 "101f1330deef2eb35b699c1e703bd1b4391ca218d589f4bcaf4a461c58dc62b2"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/fheroes2_1.1.7/fheroes2-1.1.7.dmg"
  name "Heroes of Might and Magic II"
  desc <<~DESC
    Heroes of Might and Magic II is a 4X turn-based strategy game. Ranked once by PC Gamer as the sixth-best game of all time it features resource building, new factions, skills, and a single-player campaign.
Developer:  New World Computing
Release Date:  October 1, 1996
DESC
homepage "https://macsourceports.com/game/homm2"

  app "fheroes2.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/fheroes2/" directory. Copy the "ART", "DATA", "MAPS" and "MUSIC"  directories (some might be missing depending on what version you have, this is normal) from an installation of Heroes of Might and Magic II into it. From there fheroes2.app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
