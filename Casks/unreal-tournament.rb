cask "unreal-tournament" do
  version :latest
  sha256 "689668f0f29f6900a784f2afe173ed1f0107d9f81dd73d0b8008411f96da86de"

  url "https://github.com/OldUnreal/UnrealTournamentPatches/releases/download/v469e-rc7/OldUnreal-UTPatch469e-macOS.dmg"
  name "Unreal Tournament"
  desc <<~DESC
Continuing our tour of why 1999 was the best year ever for gaming, we now have Unreal Tournament on Apple Silicon. This is the original 1999 version, not the sequels and not the attempted-but-abandoned 2014 effort, this is the game that went head-to-head with Quake III: Arena from an era when the multiplayer-only FPS was still a novel concept. Similar to the Daikatana situation, Epic has not released the source code for this game (which uses what we'd now probably retronym Unreal Engine 1) but a group of individuals online entered into an agreement with them to take over maintenance and future development. They've been releasing new builds for a few years now and now the game runs natively on Apple Silicon.So break out the Mountain Dew and party like it's 1999 again. For extra fun fire up Quake III: Arena as well and experience a rivalry that continues between old fart gamers to this very day.NOTE: The build of 469e added a preview version of the team's new Apple Metal renderer. For more information, see the installation instructions below.
Developer:  Epic Games
Release Date:  November 22, 1999
  DESC
  homepage "https://macsourceports.com/game/unrealtournament"

  app "UnrealTournament.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Unreal Tournament" directory. Copy the Maps, Sounds, Textures, and Music folders from an installation of Unreal Tournament into it. Go into the Textures folder and delete the LadderFonts.utx and UWindowFonts.utx files. From here UnrealTournament.app should run and be able to find the data.More information can be found on the README of the project, and a YouTube video demonstrating it can be found hereTo enable the preview of the Apple Metal renderer, set the GameRenderDevice setting in the [Engine.Engine] section of ~/Library/Application Support/Unreal Tournament/System/UnrealTournament.ini to FruCoRe.FruCoReRenderDevice.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
