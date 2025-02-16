cask "system-shock" do
  version :latest
  sha256 "42ba65e33b2abb153497e68588d6aa5994bf470aca331b4994221a768b0a03a4"

  url "https://github.com/MacSourcePorts/systemshock/releases/download/1.0/Shockolate-1.0.dmg"
  name "System Shock"
  desc <<~DESC
It would be hard to overstate the impact of System Shock on the games industry, and probably a lame cliché to try, but just suffice it to say that for better or worse many of the elements that became commonplace in games like audio logs and PDAs came from this game.In 2018, Night Dive Studios (a developer whose initial existence was to work out and re-release System Shock 2 for modern systems) came into the possession of the Mac OS 9 source code for the original game, and subsequently published it on GitHub. Soon after, the Shockolate project was born (think the Chocolate Doom project but for System Shock) and the game is now playable on modern machines. I'm not sure if this is the first time a build has been released with Apple Silicon compatibility, but fire it up to experience it on at least the third Mac architecture for this codebase.Note that you will need the original System Shock files, not the ones from the Enhanced Edition. Digital retailers such as Steam and GOG feature the Enhanced Edition for sale but they both come with the original as the Classic Edition, which is the one whose files you want.NOTE: We are offering two versions, one which features OpenGL and advanced software shading and a second version that is locked into sofware rendering only with the original shading. There are some reported issues with the OpenGL version on Apple Silicon. If you switch to an OpenGL mode on Apple Silicon and some screen elements turn black, hit CTRL+G to switch between the rendering modes. If when you start the game you see a frozen screen, hit the spacebar to dismiss the tutorial dialog that's not drawing correctly. If nothing works, try the Software Mode only version.
Developer:  Looking Glass Studios
Release Date:  September 23, 1994
Source Code Release Date:  April 5, 2018
  DESC
  homepage "https://macsourceports.com/game/systemshock"

  app "Shockolate.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/systemshock/res" directory. Copy the "sound" and "data" folders from an installation of System Shock into it. From here shockolate.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
