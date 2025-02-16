cask "marathon-infinity" do
  version :latest
  sha256 "0123846189c088836ce5f506c47cea2b5425db2b686eef289f9edadf812301da"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-20240822/MarathonInfinity-20240822-Mac.dmg"
  name "Marathon Infinity"
  desc <<~DESC
Marathon Infinity finishes out the Marathon trilogy and, curiously, returns to being a Macintosh exclusive. Like its predecessors it includes both single and multiplayer. According to the Aleph One site, this entry is the most popular of the three today with regards to online multiplayer.Bungie released all three Marathon titles as freeware in 2005 so the downloads from the Aleph One project include the entire game. No need to dig out your old discs here.
Developer:  Bungie
Release Date:  October 15, 1996
Source Code Release Date:  January 2000
  DESC
  homepage "https://macsourceports.com/game/marathoninfinity"

  app "Classic Marathon Infinity.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download Aleph One's dmg image and mount it. Drag the Marathon Infinity app to your Applications folder and run from there. All the data is included, it's ready to play.
    POSTFLIGHT
  end
end
