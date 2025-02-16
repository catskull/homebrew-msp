cask "the-settlers-ii" do
  version :latest
  sha256 "0305da905810d8213ed09c974a7e4e684bbdbddead382a6852dd66c5c04eeaa4"

  url "https://github.com/MacSourcePorts/s25client/releases/download/s25client-0.9.5/s25client-0.9.5.dmg"
  name "The Settlers II"
  desc "The Settlers II is a city building game with real time strategy elements. The source port project Return to the Roots follows the pattern of taking a ridiculously hardcore PC game from the 90's and reverse engineering it for modern machines.Note that it needs the the files from the original The Settlers II or The Settlers II: Gold Edition, not the 2006 remake The Settlers II (10th Anniversary).Also note that the Return to the Roots project does not yet support the game's campaign mode but you can fire up an AI match or a multiplayer game. The project is still in active development so hopefully they'll add that feature soon.
Developer:  Blue Byte Software
Release Date:  April 17, 1996"
  homepage "https://macsourceports.com/game/settlers2"

  app "s25client.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Return to the Roots" directory. Copy the "DATA" and "GFX" directories from an installation of The Settlers II into it. From here s2client.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
