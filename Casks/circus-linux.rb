cask "circus-linux" do
  version :latest
  sha256 "925ff6a6e9ceb642115e52da95a822e247ac125a96dcf9c02f894edc551cf049"

  url "https://github.com/MacSourcePorts/circuslinux/releases/download/1.1.0/circuslinux-1.1.0.dmg"
  name "Circus Linux!"
  desc <<~DESC
Circus Linux! a clone of the Atari 2600 game Circus Atari (the name presumably is derived from the 2600 name and its original platform, but features no penguins). From the developer: The object is to move a teeter-totter back and forth across the screen to bounce clowns up into the air. When they reach the top, they pop rows of balloons and then fall back down.This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from the GP2X to the GP32. It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  February 9, 2000
Source Code Release Date:  February 9, 2000
  DESC
  homepage "https://macsourceports.com/game/circuslinux"

  app "circuslinux.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
