cask "vectoroids" do
  version :latest
  sha256 "6a48a709102700c7d0b760d1c83367e63ae832050d58e226e1aa8bd64479b160"

  url "https://github.com/MacSourcePorts/vectoroids/releases/download/1.1.0/vectoroids-1.1.0.dmg"
  name "Vectoroids"
  desc <<~DESC
Vectoroids is at least the third Asteroids clone on this site. From the developer: Your objective is to maneuver a space ship within a field of asteroids, and shoot them into smaller and smaller pieces, eventually destroying them completely.Vectoroids includes music, sound effects, and lots of cool color vector graphics!This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from the Commodore Amiga to the Sega Dreamcast. It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  December 1, 2001
Source Code Release Date:  December 1, 2001
  DESC
  homepage "https://macsourceports.com/game/vectoroids"

  app "vectoroids.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
