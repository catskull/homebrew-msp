cask "afterlife" do
  version :latest
  sha256 "8bc821684e1cccbd6d3bc7c776dee86de5145d654da569172d16bdacbc6bc337"

  url "https://aarongiles.com/dreamm/releases/dreamm-2.1.2-macos.dmg"
  name "Afterlife"
  desc "Afterlife is a simulation game that tasks you with designing and managing their own version of the afterlife. You must create a functioning and efficient system to process the souls of the deceased, assigning them to either Heaven or Hell based on their virtues and sins. The game features colorful graphics, witty writing, and a wide variety of buildings and tools to use in the construction of the afterlife.
Developer:  LucasArts
Release Date:  July 12, 1996"
  homepage "https://macsourceports.com/game/afterlife"

  app "dreamm.app"

  postflight do
    puts <<~POSTFLIGHT
      Run DREAMM and then drop the files fron an installation of Afterlife onto it. From there DREAMM should install the files it needs and you should be able to run the game.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
