cask "stalker-call-of-pripyat" do
  version :latest
  sha256 "2de52b36ec9f0ae00fc4c2b9efea704520854a450dbfa96c3e152704894ac558"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenXRay_1.6_2025-02-01/openxray-1.6.dmg"
  name "S.T.A.L.K.E.R.: Call of Pripyat"
  desc <<~DESC
I know I've used the term "hardcore" a bit on here but this game is not only pretty hardcore, the process of running it is going to be a little involved too.S.T.A.L.K.E.R. is a series of survival horror FPS games set in a fictional dystopian version of Ukraine after a second Chernobyl disaster. You play as a stalker, someone who ventures into the wasteland looking for loot and encountering mutated monsters.Combining elements of FPS games, survival horror, role playing elements and the bleak atmosphere and resource scarcity associated with Eastern European game development, the series has always had a fairly devout niche. The developer released a trilogy of games in three years, the last of which was S.T.A.L.K.E.R.: Call of Pripyat. In the years since the OpenXray project has worked on a source port for modern systems.I try not to use the "Early Access" tag on here too often but it's appropriate here since we're hosting a build with some caveats. For now it's Apple Silicon only until I can hammer out some issues with Intel builds. The game also requires additional data to be present that is not in the original game data or in the app bundle, so there is a second file of data to download and install. Please read the instructions carefully.KNOWN ISSUE: quitting the game via CMD+Q may cause the game to crash or hang, however exiting via the menu works correctly.
Developer:  GSC Game World
Release Date:  October 2, 2009
  DESC
  homepage "https://macsourceports.com/game/stalkercop"

  app "openxray.app"

  postflight do
    puts <<~POSTFLIGHT
      In addition to downloading the DMG file above, download this file of extras.Create the directory "~/Library/Application Support/GSC Game World/S.T.A.L.K.E.R. - Call of Pripyat"Copy the "levels", "localization", "mp", "patches" and "resources" folders from an installation of S.T.A.L.K.E.R.: Call of Pripyat into it. For more info see our FAQ.In the "localization" folder you just copied, delete every file except for "base_sounds.db", "xefis_movies.db", and whichever language you want the game to run in. So for example, for english leave the "xenglish.db" file and delete the others  (depending on how you installed the data these may already be the only three files).Unzip the extras file and copy the "gamedata" folder and the "fsgame.ltx" files into the folder as wellOnce you are done the folder should look like this:After this, OpenXray.app should be able to find the data and run.
    POSTFLIGHT
  end
end
