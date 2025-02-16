cask "world-war-ii-gi" do
  version :latest
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/ZDoom/Raze/releases/download/1.10.2/raze-macos-1.10.2.zip"
  name "World War II GI"
  desc <<~DESC
A year after NAM came out, GT Interactive released a sequel, also by Team TNT and also aimed at the budget market, but time time taking place in WWII. It's a similar deal to NAM in that it's an ambitious game from a skilled group of modders but the Build engine was ill suited for it. This would also be the last commercial Build engine game for two decades until Ion Fury.
Developer:  TNT Team
Release Date:  March 15, 1999
  DESC
  homepage "https://macsourceports.com/game/ww2gi"

  app "Raze.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "Raze" directory in your Documents directory, and then a "NAM" directory under that. Copy the files from an existing installation of NAM into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
