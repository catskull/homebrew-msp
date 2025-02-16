cask "ion-fury" do
  version :latest
  sha256 "ed50d075df7b45add79ca83a23997dc66a95b41d57027d1ea389236c53734a63"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/eduke32_2.0/eduke32-2.0.dmg"
  name "Ion Fury"
  desc <<~DESC
Released in 2019, Ion Fury is the first commercial game to use the Build engine in decades. Based on the EDuke32 source port, it was released on Windows and Linux but not macOS, and the EDuke32 project is not currently supplying builds for macOS so the release of EDuke32 we are featuring here is the only way to play it on the Mac short of building it yourself.NOTE: At this time you may need to select an "8-bpp" video mode on Apple Silicon Macs to achieve acceptable performance (the default visuals of Ion Fury will be unaffected). This is a known issue.
Developer:  Voidpoint
Release Date:  August 15, 2019
Source Code Release Date:  August 15, 2019
  DESC
  homepage "https://macsourceports.com/game/ionfury"

  app "eduke32.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/EDuke32" directory. Copy the files from an installation of Ion Fury into it. From here EDuke32.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
