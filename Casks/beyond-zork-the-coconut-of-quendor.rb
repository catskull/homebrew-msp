cask "beyond-zork-the-coconut-of-quendor" do
  version :latest
  sha256 "ca285b166f7b8f9f6b13dba38dd518a89a5184c655926f80c882d5227ff6af3c"

  url "https://github.com/angstsmurf/spatterlight/releases/download/v1.3/Spatterlight.zip"
  name "Beyond Zork: The Coconut of Quendor"
  desc <<~DESC
    Beyond Zork is an interesting entry for a few reasons. It's the first Zork game not derived from the original larger Dungeon game, and it was made after Infocom made an ill fated venture into business software. And it tries several new things as the technology evolved - instead of just being a text adventure it incorporates RPG statistics and combat elements, along with a crude on-screen map. It both is and is not more Zork, but it's worth checking out at least.
Developer:  Infocom
Release Date:  1987
DESC
homepage "https://macsourceports.com/game/beyondzork"

  app "Spatterlight.app"

  postflight do
    puts <<~POSTFLIGHT
      Run Splatterlight and then click File -> Open and find the file from an installation of Beyond Zork (usually BEYONDZO.DAT or BEYONDZO.Z5). From there Splatterlight should run the game and add it to the library.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
