cask "bug-squish" do
  version :latest
  sha256 "e7188c477881571a2691d4e3e8064f90ca55163ca295ec60ecc49e8ef332b88d"

  url "https://github.com/MacSourcePorts/bugsquish/releases/download/0.0.6/bugsquish-0.0.6.dmg"
  name "Bug Squish"
  desc <<~DESC
Bug Squish a clone of Pangea Software's Blood Suckers. From the developer: In Bug Squish, you must defend your arm from an onslaught of blood-sucking insects. Use your fly-swatter to squish them before they suck you dry.This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from RISCOS to BeOS. It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  March 21, 2000
Source Code Release Date:  March 21, 2000
  DESC
  homepage "https://macsourceports.com/game/bugsquish"

  app "bugsquish.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
