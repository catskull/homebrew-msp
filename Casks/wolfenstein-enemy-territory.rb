# URL: https://www.etlegacy.com/download/file/593 (DMG)

cask "wolfenstein-enemy-territory" do
  version :latest
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "UNKNOWN_URL"
  name "Wolfenstein: Enemy Territory"
  desc "The story goes that Activision commissioned an expansion pack for Return to Castle Wolfenstein, which like the base game would offer both a single and multiplayer campaign, each assigned to different developers. For whatever reason, the single player campaign did not meet expectations while the multiplayer component was coming along nicely so the decision was made to cancel the expansion pack but release the multiplayer portion standalone for free as Wolfenstein: Enemy Territory.Although we have numerous options today, in 2003 this was an almost unheard of phenomenon: a free game with no strings attached and whose tech for mods and map making were already in use by the community. In 2010, the source code for the full game was released and the ET: Legacy project has been actively maintaining for years now, with an enthusiastic player base continuing to populate servers two decades later.Although always free, the game recently got pushed to GOG and Steam, making acquiring the data files easier than ever. It was recently pointed out to me that the ET: Legacy source port's native Apple Silicon support has been hammered out, so the game is now a Universal 2 binary that runs natively on Apple Silicon Macs.NOTE: due to the nature of compiled mods, not all servers may be playable for non-Windows players. Look for servers running the "Legacy" mod for the best chance of connection success.
Developer:  Splash Damage
Release Date:  May 29, 2003
Source Code Release Date:  August 12, 2010"
  homepage "https://macsourceports.com/game/wolfet"

  app "UNKNOWN_APP.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG file and drag the icon to your Applications folder. Now there will be an ETLegacy folder in Applications, in the "etmain" subfolder under that, drag the files from the "etmain" folder of an installation of Wolfenstein: Enemy Territory. From there ETLegacy.app should be able to run and find the files.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
