cask "homeworld" do
  version :latest
  sha256 "0f3da6eb9e90daf1c84cd86f496d630a1a530db740caa5380fc31b44d3effdba"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/gardens-of-Kadesh_1.2.0/Gardens.of.Kadesh-1.2.0.dmg"
  name "Homeworld"
  desc <<~DESC
I have some games on this site with lots of fans, but I feel like Homeworld has a particularly special cultlike following. Released in 1999 (aka The Best Year For Gaming, Ever) it is a RTS game set in a 3-D space, a novel concept for the time and one that's hard to match even to this day. It spawned a sequel and a pair of spinoff games, and a third game in the main series has been in the works for several years and should be delivered in 2024.Relic released the source code for the original game in 2003 under the now defunct Relic Developer Network and it's been the basis of several source ports with a history more complicated than Dune lore. NOTE: In 2013, Gearbox releaed the Homeworld Remastered Collection which featured enhanced versions of the first two mainline games as well as the original, and these are likely the only versions being sold today. If you use the data from these versions you will want to use the files from the "Homeworld1Classic" folder in the instructions below.
Developer:  Relic Entertainment
Release Date:  September 28, 1999
Source Code Release Date:  September 2003
  DESC
  homepage "https://macsourceports.com/game/homeworld"

  app "Gardens of Kadesh.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Homeworld" directory. Copy the "homeworld.big", "HW_Comp.vce" and "HW_Music.wxd" files, as well as the "movies" directory, from an installation of Homeworld into it (in the Remastered collection it may be under the "Homeworld1Classic/Data" directory). From here Gardens of Kadesh.app should run and be able to find the data. For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
