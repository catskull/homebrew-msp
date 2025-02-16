cask "blood" do
  version :latest
  sha256 "c1892c20add48bbaabdae2af8bfb034f4e45cad118b791c65053fd738e9e6563"

  url "https://github.com/ZDoom/Raze/releases/download/1.10.2/raze-macos-1.10.2.zip"
  name "Blood"
  desc <<~DESC
Blood is another first person shooter using the same Build engine as Duke Nukem 3D, but with dark gothic horror elements and weapons featuring alternative fire modes. It enjoys a cult following and the source code was never officially released, but modern Build engine ports do a decent job with a reverse engineered version of its gameplay.Note that you will need the original Blood files, not the ones from Blood: Fresh Supply, which is an updated edition. Digital retailers such as Steam and GOG feature the updated edition for sale but they both come with the original as well, which is the one whose files you want. GOG lists this in your library under the title Blood: One Unit Whole Blood.
Developer:  Monolith Productions
Release Date:  May 21, 1997
  DESC
  homepage "https://macsourceports.com/game/blood"

  app "Raze.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "Raze" directory in your Documents directory, and then a "blood" directory under that. Copy the files from an existing installation of Blood into that directory.If you have multiple Build engine game directories under the "Raze" folder, Raze.app will prompt you to ask which game to run, otherwise it will just launch the one game it finds.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
