cask "final-doom" do
  version :latest
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.0/gzdoom-4-14-0-macos.zip"
  name "Final DOOM"
  desc "Final DOOM was a retail product which contained two 32-level campaigns, TNT: Evilution and The Plutonia Experiment. It used the same weapon and feature set as DOOM II and the episodes were contracted out from the DOOM level editing community.
Developer:  TeamTNT
Release Date:  June 17, 1996
Source Code Release Date:  December 23, 1997"
  homepage "https://macsourceports.com/game/finaldoom"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "TNT.WAD" and "PLUTONIA.WAD" from an existing installation of Final DOOM into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you. At launch, GZDoom will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
