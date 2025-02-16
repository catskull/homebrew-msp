cask "maelstrom" do
  version :latest
  sha256 "b8fc0c42f8bdd661bf4f86dc7212c9cce6a61b64301497bf2595f873f9ba4d59"

  url "https://github.com/MacSourcePorts/Maelstrom/releases/download/Maelstrom-3.07_2023-01-22/Maelstrom-3.07.dmg"
  name "Maelstrom"
  desc <<~DESC
Released as shareware for Mac OS 8 at a time when high resolution games on the Mac were rare, Maelstrom holds the record for the most people who asked me to port it over. Sam Lantinga has been maintaining an SDL port for ages now, even as a notarized app, but just for fun I got it running on Apple Silicon as a Universal 2 app so that it can add one more architecture shift to its history. The Macintosh Toolbox styled dialog box for the settings is a nice touch.
Developer:  Ambrosia Software
Release Date:  1992
Source Code Release Date:  1999
  DESC
  homepage "https://macsourceports.com/game/maelstrom"

  app "Maelstrom.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the file and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
