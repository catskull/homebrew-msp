cask "cro-mag-rally" do
  version :latest
  sha256 "fc039fc19df8a466c7c185490e7768a81760312a89fe415c4ddb2ebc08e601e9"

  url "https://github.com/jorio/CroMagRally/releases/download/3.0.1/CroMagRally-3.0.1-mac.dmg"
  name "Cro-Mag Rally"
  desc <<~DESC
Released in 2000 for Mac OS 9, Cro-Mag Rally was Pangea's version of a kart racing game, sort of the Mac's response to Mario Kart, with a caveman angle to the characters.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. For Cro-Mag Rally, he has added several quality of life improvements, as well as a four-player split screen mode (up from the two-player mode of the original).Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  October 2000
Source Code Release Date:  June 27, 2022
  DESC
  homepage "https://macsourceports.com/game/cromagrally"

  app "Cro-Mag Rally.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
