cask "arx-fatalis" do
  version :latest
  sha256 "d12f56ec16c833d23ee94105109ed5efdcc0989e74ddabcf0091efcf2b38eec8"

  url "https://github.com/MacSourcePorts/ArxLibertatis/releases/download/1.2.1/ArxLibertatis-1.2.1.dmg"
  name "Arx Fatalis"
  desc "Arx Fatalis is a first person dungeon crawling RPG from Arkane, later known for the Dishonored series and the 2017 version of Prey. Taking its cues from the Ultima Underworld series, you play as a prisoner who escapes one of the underground prisons and then discovers your mission is to subvert and imprision the God of Destruction.Although not commercially successful on launch, the game has developed a cult following over the years and Arkane relased the source code in 2011. The Arx Libertatis project has been maintaining the code ever since.
Developer:  Arkane Studios
Release Date:  June 28, 2002
Source Code Release Date:  January 14, 2011"
  homepage "https://macsourceports.com/game/arxfatalis"

  app "ArxLibertatis.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/ArxLibertatis" directory. Copy the files from an installation of Arx Fatalis into it. From here arx-libertatis.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
