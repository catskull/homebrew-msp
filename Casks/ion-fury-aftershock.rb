cask "ion-fury-aftershock" do
  version :latest
  sha256 "2a5590f0abb7fabb9edaf07091a3966fd2c3a60d10e2ffd99d26e84b1daec2d1"

  url "https://github.com/MacSourcePorts/eduke32/releases/download/2.0/EDuke32-2.0.dmg"
  name "Ion Fury: Aftershock"
  desc "Ion Fury: Aftershock is the expasion pack for Ion Fury. If you liked the first game you'll like the expansion pack because now there's more of it. Similar to the original game, the developer is not distributing Mac builds so our build is the only way to play it on the Mac short of rolling your own.Thanks to a tip from the community, the issues building the EDuke32 source port have been resolved and so we are able to give you the latest version, capable of playing the expansion pack.NOTE: the new version of EDuke32 may be incompatible with earlier saved games. If you need to revert to the old version it is still available here. Also you may need to select an "8-bpp" video mode on Apple Silicon Macs to achieve acceptable performance.
Developer:  Voidpoint
Release Date:  October 2, 2023
Source Code Release Date:  October 2, 2023"
  homepage "https://macsourceports.com/game/ionfuryaftershock"

  app "EDuke32.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/EDuke32" directory. Copy the files from an installation of Ion Fury: Aftershock into it. From here EDuke32.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
