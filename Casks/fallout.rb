cask "fallout" do
  version :latest
  sha256 "db8833e4fe452e5cdff16a4c37893be0a4e5f6b473abe5ae4839a3ba61c11a2c"

  url "https://github.com/alexbatalov/fallout1-ce/releases/download/v1.1.0/fallout-ce-macos.dmg"
  name "Fallout"
  desc <<~DESC
Fallout: A Post Nuclear Role Playing Game is the first game in the Fallout franchise. Originally intended to be a sequel to Wasteland, it follows a retrofuturistic society where you play as an adventurer surfacing from an underground vault designed to protect citizens from nuclear war.Like the Fallout 2 project, this source port project is the work of an individual who has reverse engineered the original source to the game as well as made a second, parallel version designed to run on modern machines.
Developer:  Interplay Productions
Release Date:  October 10, 1997
  DESC
  homepage "https://macsourceports.com/game/fallout"

  app "Fallout Community Edition.app"

  postflight do
    puts <<~POSTFLIGHT
      Place the files from an installation of Fallout into a folder and unzip the release into it. From here fallout1-ce.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
