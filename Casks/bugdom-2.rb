cask "bugdom-2" do
  version :latest
  sha256 "c962aa3f135d829c2d4409a757480aebac0d1d6dd3fadfcf578503f85445175f"

  url "https://github.com/jorio/Bugdom2/releases/download/v4.0.0/Bugdom2-4.0.0-mac.dmg"
  name "Bugdom 2"
  desc "Bugdom 2 is a 2002 sequel to the original game. You play as a grasshopper named Skip who needs to retrieve his stolen knapsack from a large Bully Bee.With permission from Pangea, developer Iliyas Jorio has released updated versions of some Pangea games for modern versions of macOS. Like all of his Pangea ports this is the full, free game so you can just download and play it immediately, and full source code is available on GitHub. If you would like to support his efforts you can head to his itch.io page and name your own price for any of the ports.
Developer:  Pangea Software
Release Date:  December 30, 2002
Source Code Release Date:  December 2020"
  homepage "https://macsourceports.com/game/bugdom2"

  app "Bugdom 2.app"

  postflight do
    puts <<~POSTFLIGHT
      Mount the DMG image and install the app anywhere you want. This is the full game and no other data is required.
    POSTFLIGHT
  end
end
