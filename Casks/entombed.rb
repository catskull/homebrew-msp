cask "entombed" do
  version :latest
  sha256 "d92ca55edcbb20bf1d192503a00ab3f1746ca68182993a09be920d799c6f3ed8"

  url "https://github.com/MacSourcePorts/entombed/releases/download/2007.07.04/entombed-2007.07.04.dmg"
  name "Entombed!"
  desc "Entombed is a clone of the old Atari 2600 game of the same name. From the developer: You and your team of archeologists have fallen into the "catacombs of the zombies." There's no time for research, though; the walls are closing in, and the zombies have sprung to life!Fortunately, you've discovered an ancient mystical potion which allows you to create and destroy walls. Bottles of this potion are strewn about the catacombs. Grab them, and you can break through walls when you get stuck, or create a wall behind you, if you're being chased.The longer you survive, the faster you have to move.This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from the Palm Pilot to the Sharp Zarus. It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  May 22, 2002
Source Code Release Date:  May 22, 2002"
  homepage "https://macsourceports.com/game/entombed"

  app "entombed.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
