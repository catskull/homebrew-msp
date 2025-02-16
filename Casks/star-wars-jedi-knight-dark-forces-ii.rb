cask "star-wars-jedi-knight-dark-forces-ii" do
  version :latest
  sha256 "1e4235623325270d849f2b9f4360d9c96e1728aeb0f4d09a943ff26eb6f21779"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenJKDF2_0.9.1/OpenJKDF2-0.9.1.dmg"
  name "Star Wars Jedi Knight: Dark Forces II"
  desc <<~DESC
The second entry in the franchise, Star Wars Jedi Knight: Dark Forces II (aka Star Wars: Dark Forces II: Jedi Knight) evolved with the times. Whereas the first game was a sprite-based FPS similar to DOOM and Duke Nukem 3D, this game was a polygonal affair, contemporary to Quake.
Developer:  LucasArts
Release Date:  October 10, 1997
  DESC
  homepage "https://macsourceports.com/game/swjkdf2"

  app "OpenJKDF2.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the OpenJDKF2.app bundle to wherever you want and run it. On first run it will prompt you for the data files from a Star Wars Jedi Knight: Dark Forces II instance.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
