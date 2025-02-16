cask "caesar-3" do
  version :latest
  sha256 "53d023a3cfcf7cdf41de8524f2dcb6a67f94cdd7df25970ed336cbfba991952d"

  url "https://github.com/MacSourcePorts/augustus/releases/download/v3.1.0/julius-1.7.0.dmg"
  name "Caesar 3"
  desc <<~DESC
Caesar III is a city building game set in ancient Rome where you take on the role of a Roman governor building up a city and keep your citizens happy and safe.There are two reverse engineered source ports, Julius and Augustus. Julius aims to be as faithful to the gameplay of the original, to the point of maintaining saved game compatibility. Augustus is forked from Julius and adds several quality of life improvements and gameplay addtions, though at the expense of saved game compatiblity. Mac Source Ports has builds of both, so you can choose whichever one you prefer.
Developer:  Impressions Games
Release Date:  September 30, 1998
  DESC
  homepage "https://macsourceports.com/game/caesar3"

  app "julius.app"

  postflight do
    puts <<~POSTFLIGHT
      Copy the files from an installation of Caesar 3 into a directory on your hard drive. On first run, julius.app will ask for the location of this directory.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
