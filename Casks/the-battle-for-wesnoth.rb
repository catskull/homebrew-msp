# broken, download on sourceforge needs user intervention

cask "the-battle-for-wesnoth" do
  version :latest
  sha256 "2217d851683338344663318eff717f3e7184ffc93c1d002fb9b6f1c66132aa19"

  url "https://sourceforge.net/projects/wesnoth/files/wesnoth-1.18/wesnoth-1.18.3/Wesnoth_1.18.3.dmg/download"
  name "The Battle for Wesnoth"
  desc "The Battle for Wesnoth is a free and open source turn-based game in a high fantasy setting. Taking place on a hex map, the player defeats enemies and captures villages for experience. The game features single and multiplayer modes and a complete soundtrack.As the game is freeware, no other game data is necessary, just download and play.
Developer:  David White
Release Date:  October 2, 2005
Source Code Release Date:  October 2, 2005"
  homepage "https://macsourceports.com/game/wesnoth"

  app "UNKNOWN_APP.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the file and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
