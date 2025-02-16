cask "warzone-" do
  version :latest
  sha256 "5dbd5a140cb0a901348602a3d9b5d4644b77557b01ca863721b17dd10c459cae"

  url "https://github.com/Warzone2100/warzone2100/releases/download/4.5.5/warzone2100_macOS_universal.zip"
  name "Warzone 2100"
  desc <<~DESC
Warzone 2100 is a post-apocalyptic real-time strategy game from 1999 whose source was released in 2004 and whose content was released as freeware in 2008.Although my aim is to host signed and notarized game bundles on Mac Source Ports, the Warzone 2100 Project has done incredible work on this port and has logistical reasons for not being notarized yet. While they work through that process, I decided it was worth making an exception to the site's policy so that Apple Silicon gamers looking for a full, free and polished RTS would be able to find it.Because the app bundle is not notarized, on first run you may run into issues. The shortest answer is to right-click on the app bundle (wz2100.app) and select Open. The long answer is here.
Developer:  Pumpkin Studios
Release Date:  April 10, 1999
Source Code Release Date:  December 6, 2004
  DESC
  homepage "https://macsourceports.com/game/warzone2100"

  app "Warzone 2100.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the app anywhere you want (preferrably your Applications folder). This is the full game and no other data is required.
    POSTFLIGHT
  end
end
