cask "nanosaur" do
  version :latest
  sha256 "fac89eae8f51d3b4462e6aae1c858f017ed7b2738b4d8a99852933b1d5d7dc12"

  url "https://github.com/jorio/Nanosaur/releases/download/v1.4.4/Nanosaur-1.4.4-mac.dmg"
  name "Nanosaur"
  desc "Released in 1998 for Mac OS 9, Nanosaur plays like a bunch of neat ideas thrown into a blender (dinosaurs! with jetpacks! and guns!), has a surprisingly complicated premise, and an interface that screams in 1990's CD-ROM.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. Download it below and check it out.Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  April 6, 1998
Source Code Release Date:  2003"
  homepage "https://macsourceports.com/game/nanosaur"

  app "Nanosaur.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
