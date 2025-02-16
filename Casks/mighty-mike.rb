cask "mighty-mike" do
  version :latest
  sha256 "7643e45f480ef148655ab76790b8fa5b7688f041bf174244f8741e285e6092d9"

  url "https://github.com/jorio/MightyMike/releases/download/v3.0.2/MightyMike-3.0.2-mac.dmg"
  name "Mighty Mike"
  desc "Originally released under the name Power Pete in 1995 for Mac OS 7, Mighty Mike is the fourth and final Pangea Software game to be released as freeware. A top down shooter game blending elements of Ikari Warriors and indie side scrollers, the 2001 enhanced shareware re-release was a huge hit with Mac gamers at the time.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. Download it below and check it out.Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  2001
Source Code Release Date:  2021"
  homepage "https://macsourceports.com/game/mightymike"

  app "Mighty Mike.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
