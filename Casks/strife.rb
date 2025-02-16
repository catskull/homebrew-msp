cask "strife" do
  version :latest
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.0/gzdoom-4-14-0-macos.zip"
  name "Strife"
  desc "Demonstrating the flexibility of the DOOM engine (or at least developers' willingness to try and use it everywhere), Strife is an RPG with FPS elements. If nothing else, it's a neat idea. One interesting side note is that the original source code for this game was lost, the support for this game was reverse engineered.
Developer:  Rogue Software
Release Date:  May 15, 1996
Source Code Release Date:  December 12, 2014"
  homepage "https://macsourceports.com/game/strife"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "STRIFE1.WAD" and "SVE.WAD" (if you have it) from an existing installation of Strife into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you.If you only have one WAD file, like "STRIFE1.WAD", it will just run that. If you have any other WADs, like "SVE.WAD", "DOOM.WAD", etc., it will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
