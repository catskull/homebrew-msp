cask "oddworld-abes-exoddus" do
  version :latest
  sha256 "d29a7c17ddf504fc66d1abfb842f939c8096d6c6d977f4801344060879c460cd"

  url "https://github.com/MacSourcePorts/alive_reversing/releases/download/RELIVE_1.0/relive-ae-1.0-ae.dmg"
  name "Oddworld: Abe's Exoddus"
  desc "Following a year later, Oddworld: Abe's Exoddus continues the story of Abe as he once again tries to save himself and others from becoming consumer products, a bevarage in this case. This game is considered both a sequel as well as a spin-off of the original title.
Developer:  Oddworld Inhabitants
Release Date:  November 17, 1998"
  homepage "https://macsourceports.com/game/oddworld-ae"

  app "relive-ae.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Oddworld/AE" directory. Copy the files from an installation of Oddworld: Abe's Exoddus into it. From here relive-ae.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
