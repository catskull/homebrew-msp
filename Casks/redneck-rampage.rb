cask "redneck-rampage" do
  version :latest
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/ZDoom/Raze/releases/download/1.10.2/raze-macos-1.10.2.zip"
  name "Redneck Rampage"
  desc <<~DESC
Redneck Rampage is a comedic first person shooter using the same Build engine as Duke Nukem 3D. It features a hillbilly/aliens theme and its source code was never officially released, but modern Build engine ports do a decent job with a reverse engineered version of its gameplay.
Developer:  Xatrix Entertainment
Release Date:  April 23, 1997
  DESC
  homepage "https://macsourceports.com/game/rr"

  app "Raze.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "Raze" directory in your Documents directory, and then a "rr" directory under that. Copy the files from an existing installation of Redneck Rampage into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
