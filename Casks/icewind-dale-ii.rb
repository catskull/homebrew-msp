cask "icewind-dale-ii" do
  version :latest
  sha256 "3d916e219d83c452e4c0bb4d13f6cc0196e4f10881374b5ad1911d4c21ebb0bc"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/GemRB-0.9.4/gemrb-0.9.4.dmg"
  name "Icewind Dale II"
  desc <<~DESC
So as much as the GemRB project is great, one thing people have pointed out to me is that you can already play modern versions of the Infinity Engine games like Baldur's Gate with the Enhanced Editions that are already native to the Mac, which is true. But one thing you'll notice is that there are five Infinity Engine games but only four Enhanced Editions. The fifth and final game, Icewind Dale II, has never had an EE.The reason? The source code has been lost. Yeah, for whatever reason due to bad backups or the dissolution of the developer or just the state of source control around the turn of the century the source code has been lost.My bet is that it turns up eventually in someone's attic (hey, it's happened before) but in the meantime the only way to play the game on a modern source port is if someone were to reverse engineer the differences and while that may be infeasible for commercial development, the GemRB project has stepped up to the plate and as of October 2024 the game is reported to be "completable".Note that "completable" is not the same thing as "polished" so I'm labeling this as Early Access because it's more for the brave gamers who really want to play this lost game right now (reportedly it will be more polished in the forthcoming Version 0.9.4)
Developer:  Black Isle Studios
Release Date:  August 27, 2002
  DESC
  homepage "https://macsourceports.com/game/icewinddale2"

  app "gemrb.app"

  postflight do
    puts <<~POSTFLIGHT
      After launching, click the "Open" button and select the directory with your Icewind Dale II data files. Then click the "Launch" button to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
