cask "jazz-jackrabbit-2" do
  version :latest
  sha256 "ac48826f3d93c6241840e8dcf1e776072afc942b96b266ed83f58a417607ce40"

  url "https://github.com/deathkiller/jazz2/releases/download/3.1.0/Jazz2_3.1.0_MacOS.zip"
  name "Jazz Jackrabbit 2"
  desc <<~DESC
Although never as big as Mario or Sonic, Jazz Jackrabbit did well enough with a hungry PC gaming crowd to merit a second game in the series. It's your standard shareware sequel story: more levels, more twists, better technology. If you liked the original you'll like this one.It also has a very confusing release strategy. The original game was shareware, when you bought it you got the full Jazz Jackrabbit 2 game. Later, it was re-released with an additional episode under the title Jazz Jackrabbit 2: The Secret Files. Then came a release called Jazz Jackrabbit 2: The Christmas Chronicles, which adds Christmas-themed levels. So when you get the game on GOG you might spot two entries, neither of which look like they're the base game, but both should work in Jazz² Resurrection.
Developer:  Epic MegaGames
Release Date:  May 7, 1998
  DESC
  homepage "https://macsourceports.com/game/jazzjackrabbit2"

  app "Jazz² Resurrection.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Jazz² Resurrection/Source/" directory. Copy the contents of the original Jazz Jackrabbit 2 directory into it. From here Jazz² Resurrection.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
