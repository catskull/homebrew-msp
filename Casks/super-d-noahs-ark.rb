cask "super-d-noahs-ark" do
  version :latest
  sha256 "5970cb0eca60806fab75abe8eb72805aad39007dfbf0de22c333c7fc1ff34305"

  url "https://maniacsvault.net/ecwolf/files/ecwolf/1.x/ecwolf-1.4.1.dmg"
  name "Super 3D Noah's Ark"
  desc "An example of a release whose backstory is more interesting than the game itself, Super 3D Noah's Ark is the byproduct of a truly strange course of events.The original NES was the first home console to introduce the concept of locking out unofficial or unlicensed developers, and the market responded with various attempts to bypass the mechanism, being met with various forms of litigation in the process. One of these companies was called Color Dreams and they released a small handful of truly terrible games.Faced with the concept of going under, one of the founders joked about getting into making religious games and the idea kind of took off from there - they'd be sold in Christian bookstores, they'd more or less have the market to themselves, and Nintendo would be less likely to sue a religious organization due to the bad press involved.After years on the NES, they released what is believed to be the only unlicensed SNES game ever to hit the market, Super 3D Noah's Ark. It circumvented the lockout mechanism by being a "pass-through" cartridge, so you had to plug a licensed game into it to get it to work (think: Sonic & Knuckles). As if that wasn't odd enough, they licensed the SNES version of the Wolfenstein 3-D engine from id Software. It was long rumored that id Software gave them the license for free as a reslt of being angry at the changes they had to make to Wolfenstein 3-D to appease Nintendo (turning German shepherds into giant rats, no blood, etc.) but it was later revealed that no, they legitimately licensed the engine.The game itself doesn't make a lot of sense, like how on an ark designed to have two of every animal there's only a few different animals repeated over and over. Or why you need to put them to sleep with a slingshot. Or why the ark is a maze. Or why you have to take the occasional Bible quiz. But that was never the point. The point was to be a sprite-swapped Wolfenstein 3-D port for the religious video game market and it worked.Interestingly enough, not only is it one of only three games that the ECWolf source port plays, the game is currently available on GOG and Steam because the autor of ECWolf worked out a deal with Wisdom Tree (which still technically exists, I guess) to put it on there with ECWolf packaged to play it. It's only on Windows though, so you can use the port we have built here to play it on your Mac.
Developer:  Wisdom Tree
Release Date:  1994"
  homepage "https://macsourceports.com/game/s3dna"

  app "ECWolf.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/ECWolf/" directory. Copy the *.WAD and *.N3D files from an installation of Super 3D Noah's Ark into it. From here ecwolf.app should run and be able to find the data. If you have more than one game's data it will prompt you to ask which you would like to play.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
