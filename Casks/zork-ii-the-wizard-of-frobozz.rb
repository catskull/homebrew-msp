  cask "zork-ii-the-wizard-of-frobozz" do
    version :latest
    sha256 "ca285b166f7b8f9f6b13dba38dd518a89a5184c655926f80c882d5227ff6af3c"

    url "https://github.com/angstsmurf/spatterlight/releases/download/v1.3/Spatterlight.zip"
    name "Zork II: The Wizard of Frobozz"
    desc <<~DESC
So as mentioned, the original gamed Dungeon was split into three games, so the second game picks up pretty much where the first game left off, diving deeper into the intricate underground realm of the Great Underground Empire as you navigate through mystifying chambers and encounter enigmatic characters. Unravel the secrets of the all-powerful Wizard of Frobozz, solving perplexing puzzles and overcoming perilous obstacles along the way.
Developer:  Infocom
Release Date:  1980
    DESC
    homepage "https://macsourceports.com/game/zork2"

    app "Spatterlight.app"

    postflight do
      puts <<~POSTFLIGHT
Run Splatterlight and then click File -> Open and find the file from an installation of Zork II (usually ZORK2.DAT or ZORK2.Z5). From there Splatterlight should run the game and add it to the library.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
