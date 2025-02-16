cask "supertuxkart" do
  version :latest
  sha256 "21a7fb34132036c5810a8b48527513981d98d09d27d33b15e2f428bdc492c89d"

  url "https://github.com/supertuxkart/stk-code/releases/download/1.4/SuperTuxKart-1.4-mac.zip"
  name "SuperTuxKart"
  desc <<~DESC
Something I kinda wish I had been around for was the launch and initial rise of Linux. I mean, I was around for it in that I'm old enough to remember it but I barely had a PC at that point, I was quite a ways off from trying to be part of a revolution or anything. But it had to be fascinating to be involved with trying to use an operating system made from scratch, if for no other reason than the thing didn't have any software other than what people wrote for it. Most software was closed source Windows-centric to the point of being un-portable so everything from windowing systems to application software to web browsers had to be created from scratch by the community.Also, games. It would be years before developers would feel enough benevolence to port games to Linux but in the meantime people wanted to play something, so that gave rise to a handful of games including the likes of New Breed Software. Another very early example of Linux gaming was Tux Racer, a game featuring Tux (the name of the cartoon penguin mascot of Linux) racing down a snowy mountain. Later on, another game in a similar vein, TuxKart, started development. A take on Nintendo's Mario Kart, it was never finished amidst squabbles within its developers but thanks to the nature of open source software a later fork, SuperTuxKart, arose and continued the work.Today, SuperTuxKart is a mature software project with a full freeware release across multiple platforms including Apple Silicon Macs, so check it out if you're interested in playing a kart racing game alongside several FOSS-based mascots as playable characters.
Developer:  SuperTuxKart Team
Release Date:  August 6, 2007
Source Code Release Date:  August 6, 2007
  DESC
  homepage "https://macsourceports.com/game/supertuxkart"

  app "SuperTuxKart.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the application anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
