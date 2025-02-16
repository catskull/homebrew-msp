cask "abuse" do
  version :latest
  sha256 "2442a2032ee1319357a8dfd5758013224c91da9d2ebaec91e9da9ffbd8eaa82e"

  url "https://github.com/MacSourcePorts/Abuse_1996/releases/download/0.9a/abuse-0.9a.dmg"
  name "Abuse"
  desc "Formed by former id Software programmer Dave Taylor along with Jonathan Clark, Crack dot Com may take the prize for best game developer name ever. Their first game, Abuse is a fantastic 2D side scroller with an innovative control scheme which never seemed to catch on elsewhere. The shareware version was once bundled on CD-ROM with every iMac sold for a while.The developer did not survive long enough to finish a second game but the source code and the shareware levels were declared pubic domain and subsequent source code projects were granted permission to noncommercially redistribute the full game data in the wake of the company's closure. For years the Abuse-SDL project was the top source port until it went dormant. In 2016, the Abuse_1996 project picked up where it left off and released a new build with additional features, and that's what we're featuring here.
Developer:  Crack dot Com
Release Date:  February 29, 1996
Source Code Release Date:  February, 1998"
  homepage "https://macsourceports.com/game/abuse"

  app "abuse.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
