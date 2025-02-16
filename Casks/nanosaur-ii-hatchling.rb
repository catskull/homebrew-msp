cask "nanosaur-ii-hatchling" do
  version :latest
  sha256 "c2f81e0ac2b73f845d92a13d19b7fc6b83da8761d6453c2b8a34e2e2cfe1674b"

  url "https://github.com/jorio/Nanosaur2/releases/download/v2.1.0/Nanosaur2-2.1.0-mac.dmg"
  name "Nanosaur II: Hatchling"
  desc <<~DESC
Released in 2004 for Mac OS X, Nanosaur II: Hatchling picks up where the original left off, story-wise, only this time you're playing as a weaponized pterodactyl, and there are also local multiplayer modes added as well.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. Download it below and check it out.Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  2004
Source Code Release Date:  December 17, 2022
  DESC
  homepage "https://macsourceports.com/game/nanosaur2"

  app "Nanosaur 2.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
