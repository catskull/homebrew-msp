  cask "zork-iii-the-dungeon-master" do
    version :latest
    sha256 "ca285b166f7b8f9f6b13dba38dd518a89a5184c655926f80c882d5227ff6af3c"

    url "https://github.com/angstsmurf/spatterlight/releases/download/v1.3/Spatterlight.zip"
    name "Zork III: The Dungeon Master"
    desc <<~DESC
The last in the original trilogy and the last part of the original Dungeon game, this game features the deepest portion of the Great Underground Empire where you must face the wrath of the vengeful Dungeon Master as you journey through a treacherous underworld filled with ancient secrets and unimaginable dangers. Traverse through stunning landscapes, unravel mind-bending puzzles, and confront cunning adversaries in your quest for redemption. Might as well keep going if you've gone this far :)
Developer:  Infocom
Release Date:  1981
    DESC
    homepage "https://macsourceports.com/game/zork3"

    app "Spatterlight.app"

    postflight do
      puts <<~POSTFLIGHT
Run Splatterlight and then click File -> Open and find the file from an installation of Zork III (usually ZORK3.DAT or ZORK3.Z5). From there Splatterlight should run the game and add it to the library.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
