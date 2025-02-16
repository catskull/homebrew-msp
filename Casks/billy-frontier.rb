cask "billy-frontier" do
  version :latest
  sha256 "d8200ed658786406d0f8ef3ad56ed9eb3a0c4223a689685888e1454d1bb2de1e"

  url "https://github.com/jorio/BillyFrontier/releases/download/v1.1.1/BillyFrontier-1.1.1-mac.dmg"
  name "Billy Frontier"
  desc "Released in 2003 for Mac OS X, Billy Frontier was a Pangea Software title that takes you through an old west town with gun battles and duels. It's pretty unique amongst their titles in that it's not aping a particularly established genre.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. For Billy Frontier, he has added several quality of life improvements, including higher resolution support.Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  2003
Source Code Release Date:  September 29, 2022"
  homepage "https://macsourceports.com/game/billyfrontier"

  app "Billy Frontier.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
