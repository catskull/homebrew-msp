cask "final-doom" do
  version :latest
  sha256 "d36926e34f41b003624e826ff635b167482c1d4d79676f53dad7b5b5c13f8983"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.1/gzdoom-4-14-1-macos.zip"
  name "Final DOOM"
  desc <<~DESC
    Final DOOM was a retail product which contained two 32-level campaigns, TNT: Evilution and The Plutonia Experiment. It used the same weapon and feature set as DOOM II and the episodes were contracted out from the DOOM level editing community.
Developer:  TeamTNT
Release Date:  June 17, 1996
Source Code Release Date:  December 23, 1997
DESC
homepage "https://macsourceports.com/game/finaldoom"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "TNT.WAD" and "PLUTONIA.WAD" from an existing installation of Final DOOM into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you. At launch, GZDoom will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
