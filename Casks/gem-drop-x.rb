cask "gem-drop-x" do
  version :latest
  sha256 "b481bb7632b2c410cd7af32114bc566826737d4c120654ba1d8e3f910c6e4c2d"

  url "https://github.com/MacSourcePorts/gemdropx/releases/download/0.9/gemdropx-0.9.dmg"
  name "Gem Drop X"
  desc "Gem Drop X is a game in the vein of the Magical Drop series, directly ported from an Atari 8-bit game. From the developer: Gem Drop X is a fast-paced puzzle game where it's your job to clear the screen of gems before they squash you! (You're at the bottom, they're at the top, and they keep coming!)You grab gems (up to 10) of the same color and use them to knock more gems off the screen. Match 3 or more of the same color in a column and >BAM!< they explode! Any adjacent gems of the same color also explode, causing a chain reaction that might cover the entire screen!The more gems that disappear with one shot, the higher the score you get!This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from QNX to UIQ. It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  August 1997
Source Code Release Date:  August 1997"
  homepage "https://macsourceports.com/game/gemdropx"

  app "gemdropx.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
