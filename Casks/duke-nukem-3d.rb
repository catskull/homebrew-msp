cask "duke-nukem-3d" do
  version :latest
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/ZDoom/Raze/releases/download/1.10.2/raze-macos-1.10.2.zip"
  name "Duke Nukem 3D"
  desc "Duke Nukem 3D was the third entry in the Duke Nukem franchise, with a lead character acting as a parody of action movie tropes. Whereas the first two entries were side scrollers, Duke Nukem 3D was a first person shooter in a modern urban setting featuring environment interaction not commonly seen at the time. Although it was released right before the realization of full 3D environments, it gained a devout following that continues to this day. Hail to the King, baby!
Developer:  3D Realms
Release Date:  January 29, 1996
Source Code Release Date:  April 1, 2003"
  homepage "https://macsourceports.com/game/duke3d"

  app "Raze.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "Raze" directory in your Documents directory, and then a "duke3d" directory under that. Copy the files from an existing installation of Duke Nukem 3D into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
