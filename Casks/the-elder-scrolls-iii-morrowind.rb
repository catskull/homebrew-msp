cask "the-elder-scrolls-iii-morrowind" do
  version :latest
  sha256 "72fdb7bc24d55685dfcd2973555e7a41bf7b7aabba0515c02904a48f48be6b05"

  url "https://github.com/OpenMW/openmw/releases/download/openmw-0.48.0/OpenMW-0.48.0-macos-arm64.dmg"
  name "The Elder Scrolls III: Morrowind"
  desc "In a game series where there is often fierce debate about which game is the best, a very vocal contintent is adamant which one is their favorite: The Elder Scrolls III: Morrowind. Achieving a balance between gameplay styles and offering some of the best graphics 2002 had to offer, it set the tone and benchmark for the quest-driven, open world RPG.
Developer:  Bethesda Game Studios
Release Date:  May 1, 2002"
  homepage "https://macsourceports.com/game/morrowind"

  app "OpenMW-CS.app"

  postflight do
    puts <<~POSTFLIGHT
      Launch OpenMW.app, and you should be presented with a setup wizard. When prompted, select a folder with the files from an installation of The Elder Scrolls III: Morrowind into it. From here OpenMW.app should run and be able to find the data. More information is available here.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
