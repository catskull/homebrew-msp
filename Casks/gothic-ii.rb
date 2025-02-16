cask "gothic-ii" do
  version :latest
  sha256 "5403471b3b0739044101aae4c0e364c4eac6c53e7ed14b85745947a227ba3074"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenGothic_0.83/OpenGothic-0.83.dmg"
  name "Gothic II"
  desc "Gothic II is an action role-playing game set in a medieval fantasy world and follows the nameless hero from the original game as they explore a variety of environments, complete quests, and choose their faction to play as either a warrior, rogue, or mage, each with their own unique skills and abilities. Gothic II features an open-world design whose story and characters are highly regarded for their depth and complexity, and the game has amassed a devout following over the years. The game spawned an expansion pack, Gothic II: Night of the Raven and a re-release of the two under the name Gothic II: Gold Edition.The OpenGothic project has recreated the engine for Gothic II, and we have assembled an app bundle build for your convenience.KNOWN ISSUE: When saving a game and typing in a name for the save, the text you are entering may not be visible. Hitting Return should save the game anyway and your title will appear next time you want to load.
Developer:  Piranha Bytes
Release Date:  November 29, 2002"
  homepage "https://macsourceports.com/game/gothic2"

  app "OpenGothic.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/OpenGothic" directory. Copy the data files from an installation of Gothic II into it. From here OpenGothic.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
