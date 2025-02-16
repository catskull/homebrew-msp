cask "baldurs-gate" do
  version :latest
  sha256 "3d916e219d83c452e4c0bb4d13f6cc0196e4f10881374b5ad1911d4c21ebb0bc"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/GemRB-0.9.4/gemrb-0.9.4.dmg"
  name "Baldur's Gate"
  desc "The first game to use the Infinity Engine, Baldur's Gate uses Dungeons & Dragons rules and gameplay settings to create an iconic style of gameplay. This source port will also play the expansion pack, Baldur's Gate: Tales of the Sword Coast, which is usually included in modern digital repackagings.Note that GemRB requires the files from the original game, not the Enhanced Edition, however digital retailers such as GOG will also include the regular edition when you purchased the Enhanced Edition.
Developer:  BioWare
Release Date:  December 21, 1998"
  homepage "https://macsourceports.com/game/baldursgate"

  app "gemrb.app"

  postflight do
    puts <<~POSTFLIGHT
      After launching, click the "Open" button and select the directory with your Baldur's Gate data files. Then click the "Launch" button to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
