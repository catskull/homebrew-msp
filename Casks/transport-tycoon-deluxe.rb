cask "transport-tycoon-deluxe" do
  version :latest
  sha256 "ab5f2a5267fb7dd891c5f36828b82f1fd81dddbbdc1e512096d9ee190fba0408"

  url "https://cdn.openttd.org/openttd-releases/14.1/openttd-14.1-macos-universal.dmg"
  name "Transport Tycoon Deluxe"
  desc "OK, so this one is kinda weird. Here's the deal:Transport Tycoon Deluxe was released in 1995, a simulation game by Chris Sawyer in his graphic/UI style about managing transportation in a city. Sort of the progenitor to things like Cities Skylines. Or maybe just the transportation parts of SimCity.The source port OpenTTD, as its name might suggest, is a reimplementation of Transport Tycoon Deluxe. Like some other ports on this site, it is not based on existing code, it is a reimplimentation of the engine designed to consume the Transport Tycoon Deluxe data files.Straightforward enough, but what makes it unusual is that Transport Tycoon Deluxe is not commercially available anymore, not even on the usual suspects like Steam or GOG. So unless you have the files from somewhere you can't play it.To address that, OpenTTD allows you to download third party clean room data implementations of the game data files. These are not the exact same as the commercial game but they get the job done. When you run the game for the first time, it will prompt you to download the files for you. There's also tons others to choose from.This is a complete enough solution that OpenTTD is even on Steam and GOG itself as a full (free) game. You can get it from there or you can get it from the links below, which are straight from the developer's site. I'm listing it here because I want to show all of the signed and notarized Universal 2 options I come across.So download it from wherever and fire it up and strap in for one of the most ridiculously hardcore games on this site so far.
Developer:  Chris Sawyer
Release Date:  1995"
  homepage "https://macsourceports.com/game/ttd"

  app "OpenTTD.app"

  postflight do
    puts <<~POSTFLIGHT
      For OpenTTD content just mount the DMG and install the game to your Applications folder and run it. It should prompt you to download a basic data set, OpenGFX. In the "Check Online Content" menu you will want to also choose OpenSFX and OpenMSX if you want sound effects or music (you do).
    POSTFLIGHT
  end
end
