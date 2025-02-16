cask "defendguin" do
  version :latest
  sha256 "b05a8eb05f2d2c7caa9ea926b90923462219d685841e8e1a2b6e2e1466d3b275"

  url "https://github.com/MacSourcePorts/defendguin/releases/download/0.0.13/defendguin-0.0.13.dmg"
  name "Defendguin"
  desc "Defendguin is a clone of the old arcade game Defender, but it substitutes the humans for penguins (the Linux mascot) and substitutes aliens for that Photoshopped image of Bill Gates as a Borg. It's a charming example of the very narrow subgenre of games with a Linux theme, often created at a time when Linux was devoid of games.This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from the Nintendo Wii to the Atari ST. It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  November 26, 1999
Source Code Release Date:  November 26, 1999"
  homepage "https://macsourceports.com/game/defendguin"

  app "defendguin.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
