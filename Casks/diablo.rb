cask "diablo" do
  version :latest
  sha256 "d95c726023b625af6e918700dd3d19b1d4888eb829cd2640ca97de96e4564cf8"

  url "https://github.com/diasurgical/devilutionX/releases/download/1.5.4/devilutionx-macOS-universal.dmg"
  name "Diablo"
  desc "Diablo more or less invented the modern action RPG, combining addictive gameplay with roguelike elements such as randomly generated levels. You choose from one of three character classes and play as a lone hero from Tristram in the Kingdom of Khanduras who ventures into the dungeons below to fight demons, score loot, and eventually entering Hell to confront Diablo, the Lord of Terror. The formula has been duplicated multiple times over the years and the series has spawned multiple sequels. The original game in the series, while groundbreaking, has received less attention and updates from Blizzard, but also has a unique distinction in that it's the only entry whose source has been reverse engineered. The story is sort of wild and involves an effort whose catalyst involved the discovery of a debug symbols file on the retail Japanese PlayStation 1 copy of the game. The result was the Devilution project, which recreates the original source code, and the DevilutionX project which enhances the original and allows for ports to everything from the Amiga to the Nintendo Switch.Mac Source Ports is now handling an official build for the DevilutionX project. As a bonus, another individual on the DevilutionX team has built versions that run on 32-bit Intel and PowerPC Macs so this is the rare entry on our site that can be played as far back as Mac OS X 10.4. Science isn't about why, it's about why not!
Developer:  Blizard Entertainment
Release Date:  January 3, 1997"
  homepage "https://macsourceports.com/game/diablo"

  app "devilutionX.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/diasurgical/devilution" directory. Copy the *.mpq files from an installation of Diablo into it. From here devilutionX.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
