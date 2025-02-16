cask "blake-stone-planet-strike" do
  version :latest
  sha256 "b0a666554db55aa59ba31dcd22d8dd210cbe7ce72e2e8f3d6751481f0fa782a7"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/bstone_1.2.13/bstone-1.2.13.dmg"
  name "Blake Stone: Planet Strike"
  desc <<~DESC
Despite being overshadowed by DOOM, the original Blake Stone game must have sold well enough to merit a sequel, or at least not poorly enough to break from Apogee's "shareware game, retail sequel" pattern, we have Blake Stone: Planet Strike.Hailing from the golden age of PC gaming when a sequel could come out a year later the game doesn't deviate too much from its predecessor, essentially being more content with a few code tweaks and added features.The bstone source port is derived from the original source code, which Apogee released in 2013 to promote the Apogee Throwback Pack, a trend we should absolutley support seeing more of in the future.
Developer:  JAM Productions
Release Date:  October 28, 1994
Source Code Release Date:  July 8, 2013
  DESC
  homepage "https://macsourceports.com/game/bstone2"

  app "bstone.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/bibendovsky/bstone/" directory. Copy the *.VSI files from an installation of Blake Stone: Planet Strike into it. From there bstone.app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
