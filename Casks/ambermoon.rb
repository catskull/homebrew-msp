cask "ambermoon" do
  version :latest
  sha256 "ae31103bc771d474357527b2ab86fb50e71bc71b569db7a6a801eb957c670eab"

  url "https://github.com/Pyrdacor/Ambermoon.net/releases/download/v1.10.4/Ambermoon.net-Mac-ARM.zip"
  name "Ambermoon"
  desc "The Commodore Amiga was one of those computers where it jumped ahead of the competition by several miles, but then stayed there for a long time and got surpassed by the competition. I think this is why there's such a distinctive look to the games the platform and why it was so accessible to smaller game designers, the types we'd call "indie" today.Ambermoon is an RPG for the Amiga that really looks like an Amiga game. It was the second part of an unfinished trilogy. Although the original game's source has been released, the source port we're pointing to is Ambermoon.net which like it sounds is a recreation of the original game in C#/.NET (the original game was Amiga-specific Assembly language and isn't a great candidate for portability).In addition to being able to download it below from the developer's GitHub page, the game is also available on itch.io as a "Name your own price" download in case you want to support or tip the developer.
Developer:  Thalion Software
Release Date:  April 11, 1993
Source Code Release Date:  May 7, 2023"
  homepage "https://macsourceports.com/game/ambermoon"

  app "Ambermoon.net.app"

  postflight do
    puts <<~POSTFLIGHT
      Download the ZIP file and extract the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
