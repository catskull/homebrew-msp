cask "serious-sam-the-first-encounter" do
  version :latest
  sha256 "61526600bba3e5eba72fce4deda4df46919275f03d4d12e804cc7e1e1e8ceb93"

  url "https://github.com/MacSourcePorts/Serious-Engine/releases/download/SeriousEngine-1.1/ssam-tfe-ssfe-1.1.dmg"
  name "Serious Sam: The First Encounter"
  desc <<~DESC
Originally created as a tech demo to try and interest developers in their new engine, Croteam's Serious Sam: The First Encounter pioneered a new, open area genre of FPS gaming. It also pioneered a new business model: it was an FPS with a complete single player campaign and full multiplayer, with map and mod support, all for under $20. As the name would imply, the second game came about a year later, but even then the combined price of the two games was less than the standard retail at the time, and yet neither game felt like it was incomplete.Tne game has been remastered and re-released multiple times and has spawned numerous sequels and spinoff games, but in 2016 Croteam decided to release the source for the original game engine and source ports of it have been maintained ever since.Note that this source port only supports the original game, sometimes sold under the name Serious Sam Classic: The First Encounter at places like Steam. Some vendors only have the HD version, which is incompatible. Be sure you have the original files or else the port won't work.
Developer:  Croteam
Release Date:  March 21, 2001
Source Code Release Date:  March 11, 2016
  DESC
  homepage "https://macsourceports.com/game/serioussamfe"

  app "ssam-tfe.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Serious Engine/serioussamfe" directory (note the "fe" at the end, for First Encounter). Copy the data from an installation of Serious Sam: The First Encounter into it. From here ssam-tfe.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
