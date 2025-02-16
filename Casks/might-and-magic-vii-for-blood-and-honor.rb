cask "might-and-magic-vii-for-blood-and-honor" do
  version :latest
  sha256 "181044f83a10e0365163f052478e3d0220b86ff20946f09a702de1017ec48b9f"

  url "https://github.com/MacSourcePorts/OpenEnroth/releases/download/OpenEnroth_0.1_2024-01-18/OpenEnroth-0.1.dmg"
  name "Might and Magic VII: For Blood and Honor"
  desc "There's lots of game series whose entries reflect the evolution of gaming technology, but not many of them can lay claim to staring the series on the Apple II and Commodore 64.Might and Magic VII: For Blood and Honor is the seventh entry in the mainlne Might and Magic series, which runs parallel to the Hereos of Might and Magic series. Released in 1999 (the Best Year for Gaming, Ever) it is the second game in the series to use a 3D engine. The OpenEnroth project aims to implement Might and Magic VI, VII and VIII, but at the moment only VII is playable.
Developer:  New World Computing
Release Date:  June 8, 1999"
  homepage "https://macsourceports.com/game/mightandmagic7"

  app "OpenEnroth.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenEnroth" directory. Copy the files from an installation of Might and Magic VII into it. From here OpenEnroth.app should run and be able to find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
