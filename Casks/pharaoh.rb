  cask "pharaoh" do
    version :latest
    sha256 "c5322859dd0c01d4e1e8a1cdf2c331f10b49eea827f396b4d8a1a475a7263bc9"

    url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/Akhenaten_0.24/Akhenaten-ra0325.dmg"
    name "Pharaoh"
    desc <<~DESC
Pharaoh uses the engine from Caesar III but moves the setting to Ancient Egypt where you oversee the building of a city to ensure citizens are fed, employed, healthy and protected from diseases, disasters and wars. An expansion pack titled Cleopatra: Queen of the Nile followed in 2000, and modern digital retailers sell the pair as a bundle entitled Pharaoh + CleopatraSince the game was derived from the engine to Caesar III a source port called Akhenaten was forked from the Augustus source port to run the game.
Developer:  Impressions Games
Release Date:  November 2, 1999
    DESC
  homepage "https://macsourceports.com/game/pharaoh"

    app "Akhenaten.app"

    postflight do
      puts <<~POSTFLIGHT
        If you haven't already, make a "~/Library/Application Support/Akhenaten/" directory. Copy the files from an existing installation of Pharaoh + Cleopatra into it. From here Akhenaten.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
