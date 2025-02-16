cask "tomb-raider" do
  version :latest
  sha256 "9148f031d84bde298c45256d7653cb16e1609e62ae6d31327f69303da721106d"

  url "https://github.com/MacSourcePorts/OpenLara/releases/download/OpenLara_1.0_2022-02-25/OpenLara-1.0.dmg"
  name "Tomb Raider"
  desc <<~DESC
In 2024, a remaster of the first three Tomb Raider games was released, but only on Windows. So, I figured now was a good a time as any to try and get a Mac build of a Tomb Raider source port going. This is where it gets weird, so... strap in:Tomb Raider is a series where the source has never been released, so the efforts out there are all reverse engineered affairs. Most of the time when this happens you get one, maybe two and very occasionally three ports.The original Tomb Raider game has five reverse engineered source ports, and thats just what I could find.That was the first interesting thing. The second thing was that most of these only ran the first game. Core Design in the 90's cranked out five Tomb Raider games in five years. They clearly used an evolution of the same engine so most projects start with the first game and go from there, but they haven't perfected the later games yet.Of the projects I found, the one named OpenLara was the most complete, both because it actually runs the game, menus and all, and also because the author and its community have ported it to all kinds of stuff, from the Sega 32X to the Game Boy Advance. So a Mac port seemed straighforward, and it was. The problem is the game data.There's more information below in the installation instructions but the gist is that the Steam and GOG releases of the original game feature an ISO image of the original game and the Redbook audio tracks in MP3 format. And both of these need to be converted before you can run the game.So I'm calling this one "Early Access" for now, because while it works, it takes some effort.OpenLara only officially supports the first game. The second game loads but has issues when new enemies and mechanics show up. The third game loads and runs but Lara gets stuck in the geometry of the first level and that's as far as you can get. The fourth game doesn't load. I didn't even try the fifth. But if and when any of these improve, I'll update the build and add more entries.In the meantime, embark on the epic adventure of getting the game running and then party like it's 1996 and you're sitting on the floor with your original PlayStation.
Developer:  Core Design
Release Date:  October 24, 1996
  DESC
  homepage "https://macsourceports.com/game/tombraider1"

  app "OpenLara.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenLara/tr1" directory.From the GOG or Steam installations, find the file named "GAME.GOG" (it has the same name even in the Steam version) and rename it "GAME.ISO"Then use a utility like The Unarchiver (Mac App Store, free) and extract the contents of "GAME.ISO" to the "~/Library/Application Support/OpenLara/tr1" folder.Then, from the GOG or Steam installations, take the MP3 files (there should be nine of them named 02.mp3, 03.mp3, etc.) and convert them to .OGG files using fre:ac (free, open source) or something like it.Rename the files by prepending "track_" to each file (so, the converted version of 02.mp3 becomes track_02.ogg, etc.) and then move the .OGG files to "~/Library/Application Support/OpenLara/tr1" as well. If you don't do this step the game will still run but will have no music or audio in the cutscenes.After all of this, OpenLara.app should be able to run and find the files for the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
