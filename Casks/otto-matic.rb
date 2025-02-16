cask "otto-matic" do
  version :latest
  sha256 "2936a98e6f7d44c31cd08be7ecd11c817a83feaf80c307f77863812083c477ca"

  url "https://github.com/jorio/OttoMatic/releases/download/4.0.1/OttoMatic-4.0.1-mac.dmg"
  name "Otto Matic"
  desc <<~DESC
Released in 2001 for Mac OS 8, Otto Matic was one of the more ambitious games Pangea released. Also bundled with iMacs, the game plays off of 1950's sci-fi tropes and was competitive with 3D platforming games of the era.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. Download it below and check out one of the best platform games 2001 iMac G4 money could buy.Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  December 4, 2001
Source Code Release Date:  November 2021
  DESC
  homepage "https://macsourceports.com/game/ottomatic"

  app "Otto Matic.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
