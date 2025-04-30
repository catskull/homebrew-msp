  cask "planetfall" do
    version :latest
    sha256 "ca285b166f7b8f9f6b13dba38dd518a89a5184c655926f80c882d5227ff6af3c"

    url "https://github.com/angstsmurf/spatterlight/releases/download/v1.3/Spatterlight.zip"
    name "Planetfall"
    desc <<~DESC
As Infocom branched out, they tried new settings, like outer space. Set in a distant future where space exploration and cosmic mysteries abound, you play as s a lone astronaut marooned on a mysterious planet and tasked with unraveling its enigmatic secrets. Traverse breathtaking landscapes, encounter bizarre lifeforms, and uncover the remnants of a lost civilization. Prepare to embark on an epic journey of self-discovery as you navigate treacherous terrain, solve intricate puzzles, and forge unexpected alliances.
Developer:  Infocom
Release Date:  1983
    DESC
  homepage "https://macsourceports.com/game/planetfall"

    app "Spatterlight.app"

    postflight do
      puts <<~POSTFLIGHT
        Run Splatterlight and then click File -> Open and find the file from an installation of Planetfall (usually PLANETFA.DAT or PLANETFA.Z5). From there Splatterlight should run the game and add it to the library.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
