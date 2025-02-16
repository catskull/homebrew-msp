cask "quake" do
  version :latest
  sha256 "f9850d2cf19d5e514f0c492a85c84b843e28ff76318a394357a43f0fa544b5ca"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/vkQuake-1.32.0/vkQuake-1.32.0.dmg"
  name "Quake"
  desc <<~DESC
Quake is a first-person shooter, the first in the Quake series. The vkQuake port was derived from the QuakeSpasm Spiked port and uses Vulkan on macOS by way of MoltenVK.
Developer:  id Software
Release Date:  June 22, 1996
Source Code Release Date:  December 21, 1999
  DESC
  homepage "https://macsourceports.com/game/quake"

  app "vkQuake.app"

  postflight do
    puts <<~POSTFLIGHT
      Take an "id1" folder from an existing installation of Quake and place it next to vkQuake.app.To run different mods, you will need to drill into the vkQuake.app/Contents/MacOS directory in Terminal and run the vkquake executable with command line options. In the future we hope to add a GUI for this.For more information on getting the game's data onto your Mac check our FAQKNOWN ISSUE: There have been reports that double-clicking "vkQuake.app" does not run the game. I am looking into why this happens but in the meantime if you run into this you can drill into the package contents and run the executable directly. For more information see boggydigital's guide here and Andrew Tsai's video here
    POSTFLIGHT
  end
end
