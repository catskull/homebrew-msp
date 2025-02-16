cask "jagged-alliance-2" do
  version :latest
  sha256 "831d4cfd5e8ebb593530f99cb542fd9772135006c1a8aabedb4fccd897ddbd0c"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/JA2-Stracciatella-0.21.0_Rebuild/ja2-stracciatella-0.21.0.dmg"
  name "Jagged Alliance 2"
  desc <<~DESC
Jagged Alliance 2 is a cult classic tactical RPG from Canada with a devout following. In it, you play as the leader of a group of rebels seeking to defeat the tyrannical ruler of a Latin American country, hiring mercenaries in order to achieve objectives and recapture cities.The JA2-Stracciatella project offers an Intel Mac build but we've added an Apple Silicon build and hopefully can expand that to Universal 2 at some point.
Developer:  Sir-Tech Canada
Release Date:  July 23, 1999
  DESC
  homepage "https://macsourceports.com/game/jaggedalliance2"

  app "ja2-stracciatella.app"

  postflight do
    puts <<~POSTFLIGHT
      Copy the files from an installation of Jagged Alliance 2 into a directory on your hard drive. On first run, ja2-stracciatella.app will launch a dialog box where you can specify the location of this directory.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
