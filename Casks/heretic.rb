cask "heretic" do
  version :latest
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.0/gzdoom-4-14-0-macos.zip"
  name "Heretic"
  desc "Running on the DOOM engine, Heretic went an entirely different direction with dark fantasy elements, interactive environments, and inventory items. Also sometimes you can fly.
Developer:  Raven Software
Release Date:  December 23, 1994
Source Code Release Date:  January 11, 1999"
  homepage "https://macsourceports.com/game/heretic"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "HERETIC.WAD" from an existing installation of Heretic into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you.If you only have one WAD file, like "HERETIC.WAD", it will just run that. If you have any other WADs, like "DOOM2.WAD", "TNT.WAD", etc., it will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
