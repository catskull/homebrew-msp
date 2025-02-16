cask "bugdom" do
  version :latest
  sha256 "9797091290e29336e74f8d3692589acd5accc53bccf085e6aeb8636552349644"

  url "https://github.com/jorio/Bugdom/releases/download/1.3.4/Bugdom-1.3.4-mac.dmg"
  name "Bugdom"
  desc <<~DESC
Released in 1999 for Mac OS 9, Bugdom was once called "The $2,000 video game" because it was packaged for a time with every new iMac as part of a licensing deal with Apple. Kids would see it in action at a store and before long their parents were buying a Mac to play it.Fortunately if you'd like to play it today it's available for free download. With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. Download it below and check out one of the best platform games 1999 iMac money could buy.Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  December 1, 1999
Source Code Release Date:  December 2020
  DESC
  homepage "https://macsourceports.com/game/bugdom"

  app "Bugdom.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
