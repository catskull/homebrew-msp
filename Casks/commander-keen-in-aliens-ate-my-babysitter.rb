cask "commander-keen-in-aliens-ate-my-babysitter" do
  version :latest
  sha256 "f5bd331411129132df982a866e5aaea4787bb3510263526aebc15437a122455a"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/Commander-Genius_3.5.2/CGenius-3.5.2.dmg"
  name "Commander Keen in Aliens Ate My Babysitter"
  desc "Commander Keen in Aliens Ate My Babysitter is the final game in the Commander Keen series developed by id Software (though a Game Boy Color sequel/reboot would be developed externally in 2001). Released as a retail sequel, it contains the sixth episode of the original series (seventh if you count Keen Dreams).Note that most digital retailers market someting called the Commander Keen Complete Pack which contains the first two games but not this final game due to the surprisingly complicated publication history of the series. Commander Genius has incomplete support for Keen Dreams, but fully supports Aliens Ate My Babysitter, should you be able to find it somewhere.
Developer:  id Software
Release Date:  December 1991"
  homepage "https://macsourceports.com/game/ckeen3"

  app "CGenius.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Commander Genius/" directory. Copy the folders from an installation of Commander Keen in Invasion of the Vorticons into it (probably named things like KEEN1, KEEN2, etc.) From there cgenius.app should be able to run and find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
