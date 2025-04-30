cask "doom-ii" do
  version :latest
  sha256 "d36926e34f41b003624e826ff635b167482c1d4d79676f53dad7b5b5c13f8983"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.1/gzdoom-4-14-1-macos.zip"
  name "DOOM II"
  desc <<~DESC
    The retail sequel to DOOM eschews episodes for one long campaign of levels. Adding new weapons and monsters, DOOM II delivers on its promise of more DOOM.
Developer:  id Software
Release Date:  October 10, 1994
Source Code Release Date:  December 23, 1997
DESC
homepage "https://macsourceports.com/game/doom2"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "DOOM2.WAD" from an existing installation of DOOM II into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you.If you only have one WAD file, like "DOOM2.WAD", it will just run that. If you have any other WADs, like "DOOM.WAD", "TNT.WAD", etc., it will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
