cask "commander-keen-in-goodbye,-galaxy!" do
  version :latest
  sha256 "f5bd331411129132df982a866e5aaea4787bb3510263526aebc15437a122455a"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/Commander-Genius_3.5.2/CGenius-3.5.2.dmg"
  name "Commander Keen in Goodbye, Galaxy!"
  desc <<~DESC
Now going by id Software formally, Commander Keen in Goodbye, Galaxy! is a shareware sequel to the original game, consisting of two episodes. The third episode was spun off into a new game to fulfill a contractual obligation. The game features enhancements and new features such as parallax scrolling.Note that most digital retailers market someting called the Commander Keen Complete Pack which contains the first two games' content but not the Keen Dreams spinoff or the final episode Aliens Ate My Babysitter due to the surprisingly complicated publication history of the series. Commander Genius has incomplete support for Keen Dreams, but fully supports Aliens Ate My Babysitter, should you be able to find it somewhere.
Developer:  id Software
Release Date:  December 15, 1991
  DESC
  homepage "https://macsourceports.com/game/ckeen2"

  app "CGenius.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Commander Genius/" directory. Copy the folders from an installation of Commander Keen in Invasion of the Vorticons into it (probably named things like KEEN1, KEEN2, etc.) From there cgenius.app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
