cask "chex-quest-trilogy" do
  version :latest
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g4.14.0/gzdoom-4-14-0-macos.zip"
  name "Chex Quest Trilogy"
  desc <<~DESC
Legendary for being the first video game released in a cereal box (or at least the first good one), Chex Quest is a fantastic FPS game using the DOOM engine but eschewing the violence for cartoon zapping. Essentially a kid-friendly DOOM total conversion with new levels, this marketing tool has continued to entertain, especially if you have a kid who wants to play a retro first person shooter.The first game in the series was released on a CD-ROM in boxes of Chex, the second game was available for download on Chex's website, and the third game was commissioned in 2008 (!). There's a reason why everyone from AVGN to John Oliver have commented on this game.The WAD files are available for free here.
Developer:  Digital Café
Release Date:  1996
Source Code Release Date:  December 23, 1997
  DESC
  homepage "https://macsourceports.com/game/chexquest"

  app "GZDoom.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/gzdoom/" directory. Copy "CHEX.WAD", "CHEX2.WAD" and "CHEX3.WAD" from the files linked above into it. From here GZDoom.app should run and be able to find the data. If it can't, it will prompt you.If you only have one WAD file, like "CHEX.WAD", it will just run that. If you have any other WADs, like "CHEX2.WAD", "CHEX3.WAD", etc., it will ask which one you want to run.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
