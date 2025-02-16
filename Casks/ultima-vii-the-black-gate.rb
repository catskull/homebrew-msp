# broken sourceforge

cask "ultima-vii-the-black-gate" do
  version :latest
  sha256 "dae6b7b08925d3db1dda3aca612bdc08d934ca04de817a008f305320e667faf9"

  url "http://prdownloads.sourceforge.net/exult/exult-1.8.tar.gz"
  name "Ultima VII: The Black Gate"
  desc "From the glory days of the DOS-based RPG 90's era, Ultima VII: The Black Gate is the seventh entry in the Ultima series that started out on the Apple II computer. You play as The Avatar and you must get to the bottom of a series of murders and figure out what The Guardian has to do with it. It was commercially successful and led to an expansion pack, Ultima VII: Forge of Virtue.The Exult project was started in 2003 and has been going ever since, adding official signed and notarized Universal 2 macOS builds just recently. The project is one of the more well known third party efforts, even receiving praise from Lord British himself.Note that modern game retailers like GOG almost always feature both games and their expansions under the collective title Uiltima VII: The Complete Edition or something to that effect, so buying one package gets you everything and Exult allows you to pick which one you want to play.
Developer:  Origin Systems
Release Date:  April 16, 1992"
  homepage "https://macsourceports.com/game/ultima7"

  app "UNKNOWN_APP.app"

  postflight do
    puts <<~POSTFLIGHT
      Make a "/Library/Application Support/Exult/blackgate" directory (note: this is not the User Library folder, this is the System Level folder, it will require an Administrator password). Copy the "STATIC" and "GAMEDAT" folders from an installation of Ultima VII: The Black Gate into it. From here Exult.app should run and be able to find the data. Consult the documentation for more info.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
