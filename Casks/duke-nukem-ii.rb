cask "duke-nukem-ii" do
  version :latest
  sha256 "b569a1c0940a0e1842b239770b3abf173e93733331473da89b9a0b297fcf7b24"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/RigelEngine_0.9.1/RigelEngine-0.9.1.dmg"
  name "Duke Nukem II"
  desc <<~DESC
Long before he became the poster child for vaporware and even before the series made the leap to 3D, Duke Nukem was just an unassuming video game character aping 80's action hero clichés in a set of ambitious but uncomplicated side scrollers. Duke Nukem II brought the series to the world of VGA monitors and sound cards.As of this writing, it appears the only place to buy the game is Zoom Platform, an obscure digital vendor with what apears to be an exclusive license from Gearbox, the current rights holders.
Developer:  Apogee Software
Release Date:  December 3, 1993
  DESC
  homepage "https://macsourceports.com/game/duke2"

  app "RigelEngine.app"

  postflight do
    puts <<~POSTFLIGHT
      Copy the files from an installation of Duke Nukem II into a directory on your hard drive. On first run, RiegelEngine.app will ask for the location of this directory.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
