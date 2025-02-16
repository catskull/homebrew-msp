cask "icewind-dale" do
  version :latest
  sha256 "3d916e219d83c452e4c0bb4d13f6cc0196e4f10881374b5ad1911d4c21ebb0bc"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/GemRB-0.9.4/gemrb-0.9.4.dmg"
  name "Icewind Dale"
  desc <<~DESC
Another Infinity Engine game taking place in a different Dungeons & Dragons region, Icewind Dale was developed by Black Isle studios, the developer beind the original Fallout games. This source port will also play the expansion pack, Icewind Dale: Heart of Winter, which is usually included in modern digital repackagings.Note that GemRB requires the files from the original game, not the Enhanced Edition, however digital retailers such as GOG will also include the regular edition when you purchased the Enhanced Edition. Also worth noting that the GemRB site says that the sequel Icewind Dale II is playable but not completable, so if you want to try that one out just be advised support for it is incomplete.
Developer:  Black Isle Studios
Release Date:  June 29, 2000
  DESC
  homepage "https://macsourceports.com/game/icewinddale"

  app "gemrb.app"

  postflight do
    puts <<~POSTFLIGHT
      After launching, click the "Open" button and select the directory with your Baldur's Gate II data files. Then click the "Launch" button to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
