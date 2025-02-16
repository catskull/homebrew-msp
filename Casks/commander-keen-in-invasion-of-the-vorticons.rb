cask "commander-keen-in-invasion-of-the-vorticons" do
  version :latest
  sha256 "f5bd331411129132df982a866e5aaea4787bb3510263526aebc15437a122455a"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/Commander-Genius_3.5.2/CGenius-3.5.2.dmg"
  name "Commander Keen in Invasion of the Vorticons"
  desc <<~DESC
Not only is this literally id Software's first game, but they didn't even go by id Software yet, they went by the name Ideas from the Deep. Commander Keen in Invasion of the Vorticons is a shareware side scroller with EGA graphics that predated sound cards. The first game in the series consisted of three episodes, and the Commander Genius source port went so far as to reverse engineer the PC speaker sound effects the game relied upon.Note that most digital retailers market someting called the Commander Keen Complete Pack which contains the first two games' content but not the Keen Dreams spinoff or the final episode Aliens Ate My Babysitter due to the surprisingly complicated publication history of the series. Commander Genius has incomplete support for Keen Dreams, but fully supports Aliens Ate My Babysitter, should you be able to find it somewhere.
Developer:  id Software
Release Date:  December 14, 1990
  DESC
  homepage "https://macsourceports.com/game/ckeen1"

  app "CGenius.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Commander Genius/" directory. Copy the folders from an installation of Commander Keen in Invasion of the Vorticons into it (probably named things like KEEN1, KEEN2, etc.) From there cgenius.app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
