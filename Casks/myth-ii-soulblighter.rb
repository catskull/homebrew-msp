cask "myth-ii-soulblighter" do
  version :latest
  sha256 "da60770aaabf0e9bd456a200ae9304d3f994549c4c3206cbb9dad1621b945a22"

  url "https://projectmagma.net/downloads/myth2_updates/1.8.4%20Final%20(Build%20462)/Myth2_184_Mac.dmg"
  name "Myth II: Soulblighter"
  desc "Several people recently pointed out to me this source port I missed - over a year ago the Project Magma source port released an Apple Silicon build for their Myth II source port. It appears that this is similar to the OldUnreal and Daikatana 1.3 situations where a group of coders has been given the right to continue to maintain the source code, but not to release it.In any event, Myth II: Soulblighter is an RTS from a pre-Halo Bungie, released at a junction point when RTS games were starting to transition to 3D engines. It has a fairly devout following and fan base to this day, though unfortunately it is not available digitally. You will need to provide files from an installation or a Myth II disc (and for just to make things more difficult, the actual disc can't be read by modern versions of macOS) and the installer from the DMG will ask for the location, and install the files it needs including the app bundle. It's not the easiest thing for macOS but it is possible.In addition, this is the rare instance of an app which still includes PowerPC and Intel 32-bit processor support so it's both a Universal 1 and Universal 2 app.Because the installer is not notarized, on first run you may run into issues. The shortest answer is to right-click on installer in the disk image and select Open. The long answer is here.
Developer:  Bungie
Release Date:  December 28, 1998"
  homepage "https://macsourceports.com/game/myth2"

  app "Myth II 1.8.4 Installer.app"

  postflight do
    puts <<~POSTFLIGHT
      Copy the files from an installation of Myth II or its CD-ROM into a folder. Run the installer from the DMG, and when prompted point it to this folder. It will install the necessary files. From there you should then be able to able to launch "Myth II (Universal).app" and play the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
