cask "wolfenstein--d-spear-of-destiny" do
  version :latest
  sha256 "708f4597373a173bfa09d37a0c519c0310cbf69ac420dfce1255e7feee197b45"

  url "https://maniacsvault.net/ecwolf/files/ecwolf/1.x/ecwolf-1.4.0.dmg"
  name "Wolfenstein 3-D: Spear of Destiny"
  desc <<~DESC
Spear of Destiny is the retail sequel to the shareware Wolfenstein 3-D. Timeline-wise, it is a prequel that features B.J. Blazkowicz on a mission to recapture the titular Spear of Destiny from the Nazis. If you want more Wolfenstein 3-D, this has you covered.
Developer:  id Software
Release Date:  September 18, 1992
Source Code Release Date:  August 1995
  DESC
  homepage "https://macsourceports.com/game/sod"

  app "ECWolf.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/ECWolf/" directory. Copy the *.SOD files from an installation of Spear of Desting into it. From here ecwolf.app should run and be able to find the data. If you have more than one game's data it will prompt you to ask which you would like to play.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
