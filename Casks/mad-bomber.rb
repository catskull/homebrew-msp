cask "mad-bomber" do
  version :latest
  sha256 "2673a4bf6e191fa7be0e39bc8ccf8aa402074cd6726c05146800d0b7a764d0da"

  url "https://github.com/MacSourcePorts/madbomber/releases/download/0.2.5/madbomber-0.2.5.dmg"
  name "Mad Bomber"
  desc "Mad Bomber is a clone of the Atari 2600 game Kaboom!. From the developer: The Mad Bomber is loose in the city and he's dropping bombs everywhere! It's your job to catch them before they hit the ground and explode. Luckily, you have a set of trusty buckets to extinguish them with.This is one of a series of game ports we have made at the request of New Breed Software, whose games have been ported to everything from One Laptop per Child to the touchscreen-and-controller-based in-flight entertainment system found in Virgin America Airlines planes (which featured this exact game). It's only fitting that Apple Silicon be added to the list.
Developer:  New Breed Software
Release Date:  March 16, 2003
Source Code Release Date:  March 16, 2003"
  homepage "https://macsourceports.com/game/madbomber"

  app "madbomber.app"

  postflight do
    puts <<~POSTFLIGHT
      Just download and run, this is the full game
    POSTFLIGHT
  end
end
