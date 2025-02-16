cask "rise-of-the-triad" do
  version :latest
  sha256 "66186691d9b834d7462dc521319db478e9a8bbf3008d89d43ca8faeb48a7a0e2"

  url "https://github.com/MacSourcePorts/rottexpr/releases/download/1.0/rottexpr-1.0.dmg"
  name "Rise of the Triad"
  desc <<~DESC
Derived from the Wolfenstein 3-D source code, Rise of the Triad (also known by Rise of the Triad: Dark War, the title given to the full registered version of the game) had the simultaneous luck of coming out right as the public was demanding more first person shooters (at a time when the term hadn't been invented yet) and the misfortune of launching in the wake of DOOM.What it lacks in technical prowess it makes up for in personality, gameplay modes, and volume of content. The game is emblematic of an era when developers were making things up as they went along and design decisions were dictated by in-jokes and whatever the programmers found amusing. For a great article on the history and development of the game check this archived GameSpy article, ROTT in Hell. A remake game in Unreal Engine 3 came out in 2013 and 3D Realms is planning on remastering the game but in the meantime, check out this piece of FPS history.
Developer:  Apogee Software
Release Date:  December 21, 1994
Source Code Release Date:  December 20, 2002
  DESC
  homepage "https://macsourceports.com/game/rott"

  app "rottexpr.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/rott" directory. Copy the files from an installation of Rise of the Triad into it. From here rottexpr.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
