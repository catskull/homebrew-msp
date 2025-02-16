cask "osu" do
  version :latest
  sha256 "8ca6f78bb3177a226a7c585cffd516d467fc300b3b910b1e90695cde797da517"

  url "https://github.com/ppy/osu/releases/download/2025.118.3/osu.app.Apple.Silicon.zip"
  name "osu!"
  desc <<~DESC
I'll be honest, I'm not quite sure I understand this game. At the very least I'm unable to get through the easiest tutorial level. I'm not even sure on how I stumbled across this game in the first place. But apparently for the last fifteen years a fairly hardcore community has been writing, maintaining and updating a free game on the Internet called osu! which is a rhythm game where you click on things on the screen to the beat of a song.Whereas you used to have to go through various hacks to get the game running on Mac, a more recent rewrite titled osu!(lazer) features proper Mac support, including signed and notarized builds for Apple Silicon.So anyway, check it out and see what the youngin's are into these days.
Developer:  osu! development team
Release Date:  September 16, 2007
Source Code Release Date:  September 16, 2007
  DESC
  homepage "https://macsourceports.com/game/osu"

  app "osu!.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the application anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
