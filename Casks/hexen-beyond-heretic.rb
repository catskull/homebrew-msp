cask "hexen-beyond-heretic" do
  version :latest
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.0/gzdoom-4-14-0-macos.zip"
  name "Hexen: Beyond Heretic"
  desc <<~DESC
The sequel to Heretic, also running on the DOOM, Hexen: Beyond Heretic builds on Heretic's foundation by adding selectable classes and a hub structure.
Developer:  Raven Software
Release Date:  October 30, 1995
Source Code Release Date:  January 11, 1999
  DESC
  homepage "https://macsourceports.com/game/hexen"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "HEXEN.WAD" and "HEXDD.WAD" (if you have it) from an existing installation of Hexen: Beyond Heretic into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you.If you only have one WAD file, like "DOOM2.WAD", it will just run that. If you have any other WADs, like "HEXEN.WAD", "DOOM.WAD", etc., it will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
