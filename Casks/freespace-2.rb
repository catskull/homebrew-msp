cask "freespace-2" do
  version :latest
  sha256 "8183b9452607f0831ca129af7a05529dbd324cf1e8d57e043685d7a1818e03c4"

  url "https://github.com/scp-fs2open/fs2open.github.com/releases/download/release_24_0_0/fs2_open_24_0_0-builds-Mac-arm64.tar.gz"
  name "FreeSpace 2"
  desc "FreeSpace 2 was the sequel to Descent: FreeSpace - The Great War. The first game was unrelated to the Descent series and only used the name to avoid conflict with a commercial software utility, so the sequel dropped it.Although not a commercial success, it gained a cult following, especially in the wake of the 2002 release of the source code which gave rise to the FreeSpace 2 Source Code Project, one of the oldest continously maintained source ports in existence. In 2022 they added Mac support and in 2024 they added Apple Silicon support.NOTE: The links below are to the Mac builds of the game, but there also exists a project called Knossos.NET which consists of a utility which will handle the installation and configuration for you, including installing the data files from GOG installers. For the quickest route to getting the game check out the Knossos.NET entry on our Utilities page.
Developer:  Volition
Release Date:  September 30, 1999
Source Code Release Date:  April 25, 2002"
  homepage "https://macsourceports.com/game/freespace2"

  app "fs2_open_24_0_0_arm64-FASTDBG.app"

  postflight do
    puts <<~POSTFLIGHT
      For the simplest approach, download and use the Knossos.NET application. If you would rather do things manually, do the following directions:If you haven't already, make a "~/Library/Application Support/HardLightProductions/FreeSpaceOpen" directory. Copy the "data" folder from an installation of FreeSpace into it. From a GOG installation, also copy the contents of the "data2" and "data3" folders into this folder. From here the app should run and be able to find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
