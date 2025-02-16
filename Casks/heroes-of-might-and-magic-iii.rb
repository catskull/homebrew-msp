cask "heroes-of-might-and-magic-iii" do
  version :latest
  sha256 "eaafbe6d2d4c40a79aa4e24467fa7b7c4c3b80b75990645d02fe1b9c5d58e356"

  url "https://github.com/vcmi/vcmi/releases/download/1.6.3/VCMI-macOS-arm.dmg"
  name "Heroes of Might and Magic III"
  desc "Heroes of Might and Magic III is another 4X turn-based strategy game and is one of the best games in the series.Although my aim is to host signed and notarized game bundles on Mac Source Ports, the VCMI project recently added Apple Silicon support and is sufficiently complex that at this time I'm going to link to their work. We may host a notarized version in the future.Because the app bundle is not notarized, on first run you may run into issues. The shortest answer is to right-click on the app bundle (VCMI.app) and select Open. The long answer is here.
Developer:  New World Computing
Release Date:  March 3, 1999"
  homepage "https://macsourceports.com/game/homm3"

  app "VCMI.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/vcmi" directory. Copy the files from an installation of Heroes of Might and Magic III into it. From here VCMI.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
