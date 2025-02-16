cask "star-wars-jedi-knight-ii-jedi-outcast" do
  version :latest
  sha256 "1d0dd5be5b4b5c39a7c131222b9901d0bcb37cf82cf042d1b0cbb1ac1c3c4240"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenJK_2024-11-18/OpenJO-SP-1.0.dmg"
  name "Star Wars Jedi Knight II: Jedi Outcast"
  desc "The third entry in the increasingly confusingly named franchise, Star Wars Jedi Knight II: Jedi Outcast (aka Star Wars: Dark Forces III: Jedi Knight II: Jedi Outcast) eschews a custom engine in favor of id Tech 3, which powered Quake III: Arena. The result is a game that has graphically aged better than its predecessors.
Developer:  Raven Software
Release Date:  March 26, 2002
Source Code Release Date:  April 3, 2013"
  homepage "https://macsourceports.com/game/swjk2"

  app "OpenJO-SP.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenJO" directory (the OpenJK project uses the name OpenJO for Star Wars Jedi Knight II: Jedi Outcast content). Copy the "base" folder from an installation of Star Wars Jedi Knight II: Jedi Outcast into it. From here OpenJO_SP.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
