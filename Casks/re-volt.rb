cask "re-volt" do
  version :latest
  sha256 "b558bfeacf1e1c05b4ff722d77dd276607784f8aef12228e842cdd84fe3fc2c4"

  url "https://rvgl.org/downloads/rvgl_23.1030a1_macos.dmg"
  name "Re-Volt"
  desc "Re-Volt is a cult classic and fan favorite racing game originally released for the PC and Dreamcast that puts the player behind the wheel of a radio controlled vehicle racing homemade courses in suburban settings.Although my aim is to host signed and notarized game bundles on Mac Source Ports, I have had so many requests for this game that once it reappeared on GOG I decided it was worth making an exception to the site's policy so that Apple Silicon gamers looking for a fun racing game would be able to find it.Because the app bundle is not notarized, on first run you may run into issues. The shortest answer is to right-click on the app bundle (RVGL.app) and select Open. The long answer is here.
Developer:  Acclaim
Release Date:  August 18, 1999"
  homepage "https://macsourceports.com/game/revolt"

  app "RVGL.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/RVGL" directory. Copy the files from an installation of Re-Volt into it. From here RVGL.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
