cask "aliens-versus-predator" do
  version :latest
  sha256 "41736e846231f22a9ca8e99835013603d1c46f1716600c7ba83bea7a1c3f9f52"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/NakedAVP_1.1.0/NakedAVP-1.1.0.dmg"
  name "Aliens versus Predator"
  desc <<~DESC
There are many games named Aliens versus Predator, but this one is from the greatest year in the history of gaming: 1999. It had a sequel and a remake but there's still a cult following for this entry in the series.The source was released in 2001 and ported to Linux by icculus shortly thereafter, but recently the NakedAVP project put in the work to upgrade the code and get it running on the Mac.Note that on online services like Steam and GOG the game is listed as Aliens versus Predator Classic 2000, which includes the expansion pack content as well.
Developer:  Rebellion Developments
Release Date:  May 13, 1999
Source Code Release Date:  2001
  DESC
  homepage "https://macsourceports.com/game/avp"

  app "NakedAVP.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/AliensVsPredator" directory. Copy the data from an installation of Aliens versus Predator into it. From here NakedAVP.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
