cask "marathon-2-durandal" do
  version :latest
  sha256 "0a38b01ca53d37ad03f401e28edebc44ef1473b400182c196060b538e5284396"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-20250302/Marathon2-20250302-Mac.dmg"
  name "Marathon 2: Durandal"
  desc <<~DESC
    Marathon 2, released a year after the original, was also released for Windows 95. The game featured engine improvements and a plot that took place 17 years after the original. The graphics for this release have been upgraded from the release on XBLA.Bungie released all three Marathon titles as freeware in 2005 so the downloads from the Aleph One project include the entire game. No need to dig out your old discs here.
Developer:  Bungie
Release Date:  November 24, 1995
Source Code Release Date:  January 2000
DESC
homepage "https://macsourceports.com/game/marathon2"

  app "Classic Marathon 2.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download Aleph One's dmg image and mount it. Drag the Marathon 2 app to your Applications folder and run from there. All the data is included, it's ready to play.
    POSTFLIGHT
  end
end
