cask "jazz-jackrabbit" do
  version :latest
  sha256 "ebbfd9223f425e8d3bd0beb2960998a703054ee9753d8e0fae5f9f34810eafc0"

  url "https://github.com/MacSourcePorts/openjazz/releases/download/OpenJazz-1.0/openjazz-1.0.dmg"
  name "Jazz Jackrabbit"
  desc <<~DESC
In the great mascot character wars of the 90's, Nintendo had Mario, Sega had Sonic the Hedehog, and the PC had Jazz Jackrabbit. Two of those characters are big enough have their own movie franchises now. The other one is Jazz Jackrabbit.Nevertheless, back when work on the Unreal engine hadn't even started yet and before Epic became a billion dollar Fortnite force, they were Epic MegaGames and they released Jazz Jackrabbit the little game that could... show off your Super VGA graphics card.Yeah this game didn't change the world, although it did get is own sequel and there was even the beginnings of a Super Mario 64 leap into 3D, but it's still a pretty charming game that's fun to play, if nowhere near as polished as its cartridge comrades.
Developer:  Epic MegaGames
Release Date:  August 1, 1994
  DESC
  homepage "https://macsourceports.com/game/jazzjackrabbit"

  app "openjazz.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenJazz" directory. Copy the data from an installation of Jazz Jackrabbit into it. From here openjazz.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
