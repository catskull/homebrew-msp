cask "the-curse-of-monkey-island" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "The Curse of Monkey Island"
  desc <<~DESC
The Curse of Monkey Island is a point-and-click adventure game that follows the continuing adventures of Guybrush Threepwood. This time, Guybrush must rescue his love interest Elaine Marley from the clutches of the evil pirate LeChuck, who has turned her into solid gold. Along the way, he must navigate treacherous seas, outsmart a voodoo priestess, and face off against LeChuck's undead minions. The game features an engaging storyline, hilarious dialogue, and memorable characters, including the sassy pirate hunter Morgan LeFlay and the eccentric inventor Wally B. Feed. With its gorgeous visuals, witty humor, and challenging puzzles, The Curse of Monkey Island is a true gem of the adventure game genre. It was the twelfth and final game to use the SCUMM engine.
Developer:  LucasArts
Release Date:  October 31, 1997
  DESC
  homepage "https://macsourceports.com/game/curseofmonkeyisland"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of The Curse of Monkey Island onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
