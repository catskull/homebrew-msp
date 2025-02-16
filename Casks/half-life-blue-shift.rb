cask "half-life-blue-shift" do
  version :latest
  sha256 "248b8590e5593658c9082304d9ee204555fd9a0a97f88909bb639d211a18d14c"

  url "https://github.com/MacSourcePorts/xash3d-fwgs/releases/download/v0.20-2025-01-26/Xash3D-FWGS-0.20.dmg"
  name "Half-Life: Blue Shift"
  desc "OK, so here's the deal: around 2001, Gearbox Software was contracted to port Half-Life to the Sega Dreamcast. Seeing as how they handled making the Half-Life: Opposing Force expansion, it made sense to hand the task off to them. And just to make the port even more special, Gearbox made a second expansion pack, Half-Life: Blue Shift, that would be exclusive to the Dreamcast version of the game. Whereas the first expansion followed the original game's story through the viewpoint of one of the Marines sent into the Black Mesa facility, Half-Life: Blue Shift does the same but from the perspective of Black Mesa security guard Barney.Gamers were annoyed at the prospect of a single player expansion they couldn't run on their PC, so Valve capitulated and decided to release the expansion retail for PC gamers as well.And then the Dreamcast port of Half-Life was canceled at the last minute. Like, almost literally the last mintue - some number of press review copies had alredy been sent out. There's a very small number of actual copies of the game.Then when Blue Shift finally came out for the PC, many gamers were disappointed with its short length, unaware of the Dreamcast back story.In any event, one of the mods that the Xash3D FWGS project supports is a port of Blue Shift, so I've updated the build to include it. You will need both the original game and the expansion. If you want more Half-Life, duty calls...IMPORTANT NOTE: If you used one of the previous builds of Xash3D FWGS that we hosted here on Mac Source Ports, note that the location of the data has changed from ~/Library/Application Support/Xash3D to ~/Library/Application Support/Xash3D FWGS. If you get an error about how the engine could not find the "valve" folder, this is why.
Developer:  Gearbox Software
Release Date:  June 12, 2001"
  homepage "https://macsourceports.com/game/halflifebshift"

  app "Xash3D-FWGS.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Xash3D FWGS" directory. Copy the "valve" directory from an installation of Half-Life into it, alongside the "bshift" directory from an installation of Half-Life: Blue Shift. From here Xash3D-FWGS.app should run and be able to find the data. You will then need to choose "Custom Game" and choose Blue Shift from the menu. That will restart the game in Blue Shift mode.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
