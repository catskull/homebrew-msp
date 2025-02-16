cask "blake-stone-aliens-of-gold" do
  version :latest
  sha256 "b0a666554db55aa59ba31dcd22d8dd210cbe7ce72e2e8f3d6751481f0fa782a7"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/bstone_1.2.13/bstone-1.2.13.dmg"
  name "Blake Stone: Aliens of Gold"
  desc <<~DESC
After the success of publishing Wolfenstein 3-D, Apogee licensed the engine from id Software and hired JAM Software to make a new game with it. Giving it a sci-fi setting instead of WWII, they added multiple features to the engine like one-way doors, health stations, teleporters, in-game informant characters, and more.The game then had the incredibly unfortunate timing of being released literally one week before DOOM. It's not the only game with this distinction but it's the game industry equivalent of being a movie that released on the same day as Star Wars.Still, the game did enough business to merit a sequel and developed a following, especially amongst those whose computers weren't strong enough to run DOOM.The bstone source port is derived from the original source code, which Apogee released in 2013 to promote the Apogee Throwback Pack, a trend we should absolutley support seeing more of in the future.
Developer:  JAM Productions
Release Date:  December 3, 1993
Source Code Release Date:  July 8, 2013
  DESC
  homepage "https://macsourceports.com/game/bstone1"

  app "bstone.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/bibendovsky/bstone/" directory. Copy the *.BS6 files from an installation of Blake Stone: Aliens of Gold into it. From there bstone.app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
