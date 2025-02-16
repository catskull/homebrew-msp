cask "marathon" do
  version :latest
  sha256 "245455ee76e44a5b08bd1bfffd309ef912b165c190d47badb747e53ffb23a1b8"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-20240822/Marathon-20240822-Mac.dmg"
  name "Marathon"
  desc "The year is 1994. The world can't get enough of DOOM. Everyone that is except for you because you own an Apple Macintosh and DOOM is a PC game. You comfort yourself with your superior port of Wolfenstein 3-D but it's just not the same.Bungie Software Products Corporation to the rescue! Marathon was released as the Mac's answer to DOOM, and a game which was its opposite, as it was not on the PC. Bungie would go on to make a trilogy of games in the Marathon universe before starting work on the Mac-exclusive HaloOf course what really happened is Microsoft bought Bungie and Halo became an Xbox exclusive. Halo and Marathon may not share a universe, but Bungie put Marathon references in all of their Halo titles, including embedding the Marathon logo in the original Halo box art.Bungie released all three Marathon titles as freeware in 2005 so the downloads from the Aleph One project include the entire game. No need to dig out your old discs here.
Developer:  Bungie
Release Date:  December 21, 1994
Source Code Release Date:  January 2000"
  homepage "https://macsourceports.com/game/marathon"

  app "Classic Marathon.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download Aleph One's dmg image and mount it. Drag the Marathon app to your Applications folder and run from there. All the data is included, it's ready to play.
    POSTFLIGHT
  end
end
