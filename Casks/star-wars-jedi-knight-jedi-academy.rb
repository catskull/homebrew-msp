cask "star-wars-jedi-knight-jedi-academy" do
  version :latest
  sha256 "66cc2f2ea8529179489e037949f335a37baa852e735e88a2e28c7c486bb2ff75"

  url "https://github.com/MacSourcePorts/OpenJK/releases/download/1.0/OpenJK-MP-1.0.dmg"
  name "Star Wars Jedi Knight: Jedi Academy"
  desc <<~DESC
The fourth and most recent entry in the franchise that gave up on numbers, Star Wars Jedi Knight: Jedi Academy (aka Star Wars: Dark Forces IV: Jedi Knight III: Jedi Outcast II: Jedi Academy) continues to use id Tech 3, which powered Quake III: Arena. This gives the game a more consistent look compared to its the previous title. Although seemingly less of a sales force than its predecessor, it enjoys a multiplayer community that is still active today.
Developer:  Raven Software
Release Date:  September 16, 2003
Source Code Release Date:  April 3, 2013
  DESC
  homepage "https://macsourceports.com/game/swjkja"

  app "OpenJK-MP.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenJK" directory (the OpenJK project uses the name OpenJO for Star Wars Jedi Knight II: Jedi Outcast content). Copy the "base" folder from an installation of Star Wars Jedi Knight II: Jedi Outcast into it. From here OpenJK_SP.app (single player) and OpenJK_MP.app (multiplayer) should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
