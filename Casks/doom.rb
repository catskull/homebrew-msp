cask "doom" do
  version :latest
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.0/gzdoom-4-14-0-macos.zip"
  name "DOOM"
  desc "You can't *not* have DOOM on a site like this. With its classic and low system requirements, DOOM famously runs on anything with a screen and a processor, so naturally it (still) runs on the Mac. The most active source port is GZDoom, which is ahead of the curve on having a Universal 2 app with M1 Mac support so we're just linking to it here. Be sure to check out their website for more info.We've also linked to ZDoom, an older but discontinued predecessor to GZDoom, for those of you who want to run DOOM on an older PowerPC Mac.
Developer:  id Software
Release Date:  December 10, 1993
Source Code Release Date:  December 23, 1997"
  homepage "https://macsourceports.com/game/doom"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "DOOM.WAD" from an existing installation of DOOM into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you.If you only have one WAD file, like "DOOM.WAD", it will just run that. If you have any other WADs, like "DOOM2.WAD", "TNT.WAD", etc., it will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
