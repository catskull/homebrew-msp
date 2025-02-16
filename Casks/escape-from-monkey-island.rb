cask "escape-from-monkey-island" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Escape from Monkey Island"
  desc <<~DESC
Escape from Monkey Island is a point-and-click adventure game that again follows the continuing adventures of Guybrush Threepwood, now with updated 3D graphics. This time, Guybrush must stop a nefarious plan by the evil capitalist businessman Charles L. Charles, who plans to turn the idyllic Caribbean island of Melee into a theme park. Along the way, he must solve puzzles, engage in sword fights, and interact with a host of memorable characters, including the crafty pirate hunter Kate Capsize and the ever-scheming LeChuck. With its humorous writing, quirky characters, and challenging puzzles, Escape from Monkey Island is a worthy addition to the beloved Monkey Island franchise. It was the second game to use the GrimE engine.
Developer:  LucasArts
Release Date:  October 31, 1997
  DESC
  homepage "https://macsourceports.com/game/escapefrommonkeyisland"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Escape from Monkey Island onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
