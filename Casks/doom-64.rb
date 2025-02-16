cask "doom-64" do
  version :latest
  sha256 "37ca2b2598627c103af33dcc500c2f7e626d9ae9d3004b9493fa0b710017dfcd"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/DOOM64EXPlus_3.6.5.8/DOOM64EXPlus-3.6.5.8.dmg"
  name "DOOM 64"
  desc "OK, now we have all the DOOM games (pre-2016 anyway).The port of DOOM to the original PlayStation, handled by Midway Games, was such a hit that when it came time to port the game to the Nintendo 64, Midway wanted to do something other than just port the same game again, and wanted to take advantage of the features of the hardware. The result is the most bizarrely unique entry in the series.DOOM 64 does use the DOOM engine, or at least it started with it, but they took a hard left. The game does use the original game's enemies with reworked assets from the original game, but the levels are new and the engine takes place of the then-novel idea of hardware accelerated graphics. Notably, the N64 could do colored lighting and they use that all throughout the game.Reactions were mixed. Gamers wanting the original game were disappointed, gamers wanting something new were intrigued, and the critics were mostly just confused. Until recently, it was an obscure anomaly entry in the series with a cult following.A source port project called Doom64 EX came out, whose goal was to recreate the game using the N64 ROM image for data. In the runup to DOOM Eternal, id and Zenimax decided to resurrect the game and the creator of the source port worked with Nightdive Studios to make a version that ran on PC as well as consoles. In the years since, the Doom 64 EX+ project came out which enhances the original source port as well as gives it the ability to use the data from the PC port of the game. The commercial release did not come to the Mac, but working with the author we're able to offer a Mac release here.So fire it up and pretend like you're playing on your big CRT having just rented it from Blockbuster Video. It's definitely a unique experience.
Developer:  Midway Games
Release Date:  April 4, 1997"
  homepage "https://macsourceports.com/game/doom64"

  app "DOOM64EXPlus.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/doom64ex-plus" directory. Copy the DOOM64.WAD file from an installation of DOOM 64 into it. From here DOOM64EXPlus.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
