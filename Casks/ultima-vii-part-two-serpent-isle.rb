# broken sourceforge
cask "ultima-vii-part-two-serpent-isle" do
  version :latest
  sha256 "e9e1ee9af847b67abf7e638129796623906b156751713d3803ced4498672ac2d"

  url "https://sourceforge.net/projects/exult/files/exult-all-versions/1.8/exult-1.8.0.dmg/download"
  name "Ultima VII Part Two: Serpent Isle"
  desc <<~DESC
Continuing the glory days of the DOS-based RPG 90's era, Ultima VII Part Two: Serpent Isle takes the "more is more" approach and is essentially more content in the same engine. I'd say that today we'd call this a standalone expansion pack, but believe it or not this sequel to a sequel also had its own expansion pack, Ultima VII: The Silver Seed. If you want Ultima VII we've got you fam.The Exult project was started in 2003 and has been going ever since, adding official signed and notarized Universal 2 macOS builds just recently. The project is one of the more well known third party efforts, even receiving praise from Lord British himself.Note that modern game retailers like GOG almost always feature both games and their expansions under the collective title Uiltima VII: The Complete Edition or something to that effect, so buying one package gets you everything and Exult allows you to pick which one you want to play.
Developer:  Origin Systems
Release Date:  March 25, 1993
  DESC
  homepage "https://macsourceports.com/game/ultima7part2"

  app "UNKNOWN_APP.app"

  postflight do
    puts <<~POSTFLIGHT
      Make a "/Library/Application Support/Exult/serpentisle" directory (note: this is not the User Library folder, this is the System Level folder, it will require an Administrator password). Copy the "STATIC" and "GAMEDAT" folders from an installation of Ultima VII: The Black Gate into it. From here Exult.app should run and be able to find the data. Consult the documentation for more info.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
