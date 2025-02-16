cask "daikatana" do
  version :latest
  sha256 "bee024614c9c4b0e18cee0cb6b18f6faf0ee0a4523598f7a994b9a0785b9f77f"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/daikatana-1.3-2023-01-09/daikatana-1.3.dmg"
  name "Daikatana"
  desc "Yes, it's that game. Daikatana is the game known as much for its infamous advertising and the drama of its backstory as the content of the game itself.Released in 2000 after a protracted (for the time anyway) three-year development cycle, John Romero's Daikatana was an ambitious game from an enthusiastic new developer that was unable to live up to the hype due to numerous issues at launch. Although some problems were addressed in patches, the Dallas branch of developer Ion Storm was unable to survive despite its pedigree (though their Austin branch would soldier on for a few more years).Theorizing that the game's issues were not unsalvageable, a group of individuals online contacted the right people and were able to obtain the source under a non-open source license. Years later the Daikatana 1.3 Project released the first version of their attempt at fixing the game's issues with the years of what we've learned about game design as a guide (also the game used id Tech 2, same as Quake II).For those of us who followed the 1990's Dallas FPS gaming scene, Daikatana has always been a fascinating case study in ambition versus expectations. Many critics agreed that there were genuinely good parts of the game bogged down by issues in the lesser sections. It's interesting to think what the gaming landscape might have been like had the game succeeded.I first learned about this project via this excellent GManLives video and, upon learning that the game was also ported to Linux and Mac (the original release was Windows-only), I went to go download the Mac version to discover that it was years out of date and unplayable as a 32-bit executable. The reason was simple and a familar one: the (probably one) person who maintained it left the project years ago.So, I wrote to the project and was able to get the source to work on it. I've been picking at it for months now and I finally got it working on Intel 64-bit as well as Apple Silicon. As mentioned above the source code is not available to the public but I intend to keep this one up to date.
Developer:  Ion Storm
Release Date:  May 22, 2000"
  homepage "https://macsourceports.com/game/daikatana"

  app "daikatana.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the Daikatana.app bundle to wherever you want and run it. On first run it will prompt you for the data files from a Daikatana 1.2 instance and copy them to the appropriate location.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
