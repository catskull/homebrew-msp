cask "wolfenstein--d" do
  version :latest
  sha256 "708f4597373a173bfa09d37a0c519c0310cbf69ac420dfce1255e7feee197b45"

  url "https://maniacsvault.net/ecwolf/files/ecwolf/1.x/ecwolf-1.4.0.dmg"
  name "Wolfenstein 3-D"
  desc <<~DESC
Wolfenstein 3-D is the granddaddy to all the modern first person shooters that came after it. Released as shareware in 1992 it launched the independent career of id Software that would result in DOOM and Quake. Though simplistic by today's standards, it still holds up as a fun maze game with the occasional Nazi to shoot.
Developer:  id Software
Release Date:  May 5, 1992
Source Code Release Date:  August 1995
  DESC
  homepage "https://macsourceports.com/game/wolf3d"

  app "ECWolf.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/ECWolf/" directory. Copy the *.WL6 files from an installation of Wolfenstein 3-D into it. From here ecwolf.app should run and be able to find the data. If you have more than one game's data it will prompt you to ask which you would like to play.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
