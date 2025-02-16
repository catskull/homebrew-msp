cask "tyrian-2000" do
  version :latest
  sha256 "a73a208aa6e5cd336d2f50f641f580d1e75859109d65de8f256d9ff2916cd76d"

  url "https://github.com/MacSourcePorts/opentyrian2000/releases/download/3.0/opentyrian2000-3.0.dmg"
  name "Tyrian 2000"
  desc <<~DESC
Released in 1999 as Tyrian's version 3.0 patch, Tyrian 2000 added a fifth episode to the classic SHUMP. In 2004 the game was released as freeware and in 2007 the Pascal source code was translated to C and the OpenTyrian project was born, and a fork of the project, OpenTyrian2000, supports the fifth episode. At Mac Source Ports we are hosting both because the projects have progressed differently.The game is freeware so this build contains all the data.
Developer:  Eclipse Software
Release Date:  1999
Source Code Release Date:  February 2007
  DESC
  homepage "https://macsourceports.com/game/tyrian2000"

  app "opentyrian2000.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the app anywhere you want (preferrably your Applications folder). This is the full game and no other data is required.
    POSTFLIGHT
  end
end
