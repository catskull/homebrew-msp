cask "carmageddon" do
  version :latest
  sha256 "5ca8bb9a9450a65cfce50a9f602bbaa17b753308beded435c407267897c8b354"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/dethrace_0.8.0/dethrace-0.8.0.dmg"
  name "Carmageddon"
  desc <<~DESC
An example of controversy for controversy's sake, Carmageddon basically took what people wanted to do in other racing games - crash into other cars and run over pedestrians - and turned it into the primary gameplay loop. They took the macabre joke about getting points for hitting people in your car and made it a gameplay mechanic. The game was successful both from a critical and commercial perspective, as well as its goal as a controversy magnet.The dethrace project is a source port where in lieu of source code they're reverse engineering it, and according to their Twitter account they're approximately 70% of the way there. The game is very playable but may crash in some places, so I'm introducing a new tag: Early Access. This probably could use a better name but I'm using it to convey the notion that the project doesn't consider itself completely finished (though there are reports of people making it through the entire game), but it's still pretty awesome so I figured if nothing else it's worth putting up a quick build.
Developer:  Stainless Games
Release Date:  June 13, 1997
  DESC
  homepage "https://macsourceports.com/game/carmageddon"

  app "dethrace.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/dethrace" directory. Copy the data from an installation of Carmageddon into it. From here dethrace.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
