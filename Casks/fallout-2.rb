cask "fallout-2" do
  version :latest
  sha256 "f3f3a4a5e6ba168bb7bb19351923ddaf6dfb838c351782bd13ce03740d970feb"

  url "https://github.com/alexbatalov/fallout2-ce/releases/download/v1.2.0/fallout2-ce-macos.dmg"
  name "Fallout 2"
  desc <<~DESC
From the era when major sequels came out within a year, Fallout 2 improves on just about everything from its predecessor and continued the cult following franchise into a series that persists to this day.This source port follows a similar path to the Devilution project where an individual has reverse engineered the original source to the game as well as made a second, parallel version designed to run on modern machines. Whereas there have been a few attempts over the years to make an engine that could run the game, this impressive new effort came together in just a few months.
Developer:  Black Isle Studios
Release Date:  October 29, 1998
  DESC
  homepage "https://macsourceports.com/game/fallout2"

  app "fallout2-ce.app"

  postflight do
    puts <<~POSTFLIGHT
      Place the files from an installation of Fallout 2 into a folder and unzip the release into it. From here fallout2-ce.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
