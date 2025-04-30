  cask "system-shock" do
    version :latest
    sha256 "586cd081bfd6615ac4cd5615b99925a14ea4d955330af98d01eceba274e4b989"

    url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/Shockolate_0.7.8-2025-04-22/Shockolate-0.7.8.dmg"
    name "System Shock"
    desc <<~DESC
It would be hard to overstate the impact of System Shock on the games industry, and probably a lame cliché to try, but just suffice it to say that for better or worse many of the elements that became commonplace in games like audio logs and PDAs came from this game.In 2018, Night Dive Studios (a developer whose initial existence was to work out and re-release System Shock 2 for modern systems) came into the possession of the Mac OS 9 source code for the original game, and subsequently published it on GitHub. Soon after, the Shockolate project was born (think the Chocolate Doom project but for System Shock) and the game is now playable on modern machines. I'm not sure if this is the first time a build has been released with Apple Silicon compatibility, but fire it up to experience it on at least the third Mac architecture for this codebase.Note that you will need the original System Shock files, not the ones from the Enhanced Edition. Digital retailers such as Steam and GOG feature the Enhanced Edition for sale but they both come with the original as the Classic Edition, which is the one whose files you want.NOTE: If you previously installed a version of the game, note the new location for the game data.
Developer:  Looking Glass Studios
Release Date:  September 23, 1994
Source Code Release Date:  April 5, 2018
    DESC
  homepage "https://macsourceports.com/game/systemshock"

    app "Shockolate.app"

    postflight do
      puts <<~POSTFLIGHT
If you haven't already, make a "~/Library/Application Support/Interrupt/systemshock/res" directory. Copy the "sound" and "data" folders from an installation of System Shock into it. From here shockolate.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
