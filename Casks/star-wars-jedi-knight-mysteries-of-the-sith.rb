cask "star-wars-jedi-knight-mysteries-of-the-sith" do
  version :latest
  sha256 "1e4235623325270d849f2b9f4360d9c96e1728aeb0f4d09a943ff26eb6f21779"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenJKDF2_0.9.1/OpenJKDF2-0.9.1.dmg"
  name "Star Wars Jedi Knight: Mysteries of the Sith"
  desc <<~DESC
Most of the time an expansion pack is just more content, usually some new enemies, etc. Star Wars Jedi Knight: Mysteries of the Sith is an expansion to Star Wars Jedi Knight: Dark Forces II but it featured more improvements like colored lighting and improved textures. It also featured Mara Jade, the most popular Expanded Universe character in history.
Developer:  LucasArts
Release Date:  February 7, 1998
  DESC
  homepage "https://macsourceports.com/game/swjkmots"

  app "OpenJKDF2.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the OpenJDKF2.app bundle to wherever you want and run it. On first run it will prompt you for the data files from a Star Wars Jedi Knight: Dark Forces II instance. Then select Mysteries of the Sith from the Mods menu and the app should walk you through finding the files for the expansion.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
