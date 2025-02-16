cask "star-control-ii-the-ur-quan-masters" do
  version :latest
  sha256 "6234f0d2c32e6a818254ffff1a720b764f7da04ea2b006b052720a66047b4c47"

  url "https://github.com/MacSourcePorts/uqm/releases/download/0.8.0/The.Ur-Quan.Masters-0.8.0.dmg"
  name "Star Control II: The Ur-Quan Masters"
  desc <<~DESC
Frequently in the lists of best games ever made, Star Control II is definitely a popular game but the story behind its preservation is even more interesting.It was released in 1992 for DOS and later ported to the 3DO game console in 1994. In 2002, the source code to the 3DO version was released as open source, and the content of the game was released under a Creative Commons license, so the source port project The Ur-Quan Masters was created as a result. Effectively, this game is Star Control II but the history and logistics of copyright on the name has been fraught with controversy and litigation, so to play it safe this source port named itself The Ur-Quan Masters, which was the subtitle of the original game. I debated whether or not to list it as that or Star Control II so I compromised and listed it as the full name with the subtitle for anyone who knows Star Control II but wasn't familiar with the Ur-Quan Masters source port project.Note that the original DOS version is available on GOG but this version is native to Intel and Apple Silicon Macs.
Developer:  Toys for Bob
Release Date:  November 1, 1992
Source Code Release Date:  2002
  DESC
  homepage "https://macsourceports.com/game/sc2"

  app "The Ur-Quan Masters.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the file and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
