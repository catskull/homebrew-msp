cask "planescape-torment" do
  version :latest
  sha256 "3d916e219d83c452e4c0bb4d13f6cc0196e4f10881374b5ad1911d4c21ebb0bc"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/GemRB-0.9.4/gemrb-0.9.4.dmg"
  name "Planescape: Torment"
  desc <<~DESC
There are games that are cult classics, and then there are games like Planescape: Torment that define the term cult classic.So, true story: I'm working for a Babbage's circa 2001 or so and the Infinity Engine games are very popular. We had customers that came in asking for more. They'd played Baldur's Gate and its expansion and Baldur's Gate II and Icewind Dale and they wanted more and we would tell them sorry, there's not any more. Utterly and completely oblivious that this game with maybe the worst box art ever was indeed another Infinity Engine game and exactly what they were looking for.Yes, Planescape: Torment is the game everyone wanted long after it was out of print. It uses a D&D setting that's unusual and it turns several RPG conventions on their heads, like how in some cases your character dying is how you *solve* a puzzle.Note that like other Infinity Engine games, the GemRB project plays the original version, not the Enhanced Edition, but on places like GOG will also include the regular edition when you purchased the Enhanced Edition. Also note that according to the GemRB status page, Planescape: Torment is listed as finishable, but not yet polished.
Developer:  Black Isle Studios
Release Date:  December 10, 1999
  DESC
  homepage "https://macsourceports.com/game/planescapetorment"

  app "gemrb.app"

  postflight do
    puts <<~POSTFLIGHT
      After launching, click the "Open" button and select the directory with your Planescape: Torment data files. Then click the "Launch" button to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
