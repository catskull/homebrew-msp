cask "tyrian" do
  version :latest
  sha256 "bbc283459896608bcac3fea99b19875486bca36a7f6b28503c6da0d75ea49435"

  url "https://github.com/MacSourcePorts/opentyrian/releases/download/OpenTyrian_2.1.20221123/opentyrian-2.1.20221123.dmg"
  name "Tyrian"
  desc "Released as Shareware in 1995, Tyrian is a fantastic SHUMP with an arcade mode for quick play and a story mode which allows you to upgrade your ship.Tyrian was released with three episodes and a later 2.0 patch added a fourth episode. In 2004 the game was released as freeware and in 2007 the Pascal source code was translated to C and the OpenTyrian project was born.The game was re-released in 1999 as Tyrian 2000 with a fifth episode. OpenTyrian does not support the fifth episode but a fork of the project, OpenTyrian2000, does. At Mac Source Ports we are hosting both because the projects have progressed differently.The game is freeware so this build contains all the data.
Developer:  Eclipse Software
Release Date:  June 10, 1995
Source Code Release Date:  February 2007"
  homepage "https://macsourceports.com/game/tyrian"

  app "opentyrian.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the app anywhere you want (preferrably your Applications folder). This is the full game and no other data is required.
    POSTFLIGHT
  end
end
