cask "serious-sam-the-second-encounter" do
  version :latest
  sha256 "9ee8427618a69894bf826bc0ec84de0d3afda3bf176c0c01ea2b30da7b29e2c5"

  url "https://github.com/MacSourcePorts/Serious-Engine/releases/download/SeriousEngine-1.1/ssam-tse-ssse-1.1-x86_64.dmg"
  name "Serious Sam: The Second Encounter"
  desc <<~DESC
Again in the era when a sequel a year later was seen as a good thing, Croteam's Serious Sam: The Second Encounter features another single player campaign with more levels, more multiplayer content, more mods, etc. Like its predecessor it was released for $20 and was effectively the second half of the best value in early 2000's FPS gaming, but also never seemed incomplete.Tne game has been remastered and re-released multiple times and has spawned numerous sequels and spinoff games, but in 2016 Croteam decided to release the source for the original game engine and source ports of it have been maintained ever since.Note that this source port only supports the original game, sometimes sold under the name Serious Sam Classic: The Second Encounter at places like Steam. Some vendors only have the HD version, which is incompatible. Be sure you have the original files or else the port won't work.NOTE: At this time, for some reason, the Apple Silicon version for the Second Encounter locks up when starting a game (the First Encounter does not) so we're only linking to a build for Intel, which will also work on Apple Silicon. I'm raising the issue with the source port maintainers, but in the meantime I didn't want to deny anyone more Serious Sam.
Developer:  Croteam
Release Date:  February 5, 2002
Source Code Release Date:  March 11, 2016
  DESC
  homepage "https://macsourceports.com/game/serioussamse"

  app "ssam-tse.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Serious Engine/serioussamse" directory (note the "se" at the end, for Second Encounter). Copy the data from an installation of Serious Sam: The First Encounter into it. From here ssam-tse.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
