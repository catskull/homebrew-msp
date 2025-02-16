cask "unreal" do
  version :latest
  sha256 "7ac0e05f4b016493ef2917b92eba6ee65f6831c6692afbabc2a602a4a3351fac"

  url "https://github.com/OldUnreal/Unreal-testing/releases/download/v227k/OldUnreal-UnrealPatch-227k.dmg"
  name "Unreal"
  desc "Also known as that game that convinced you to buy a Voodoo card, Unreal was released in 1998 after a lengthy development cycle. Although the name Unreal is primarily known today as a game engine licensing powerhouse, the original entry in the series is more than a tech demo, it's a fasinating glimpse in to what it was like to try and make a polygonal FPS game before most of the rules were well known. It's also a perfect example of a game where what you remember is much different than what you play today.The OldUnreal team, responsible for bringing us the Mac port of Unreal Tournament have received permission from Epic to also release a build of the original Unreal for the Mac. Although the original game was available for classic Mac OS, this is the first Mac port of it in... nevermind how long it's been.Note that we are labeling this an Early Access release since the OldUnreal team is labeling this build a pre-release. The original renderer has been replaced with a new Metal-based renderer and some glitches are to be expected, but the game is definitely playable.
Developer:  Epic Games
Release Date:  May 22, 1998"
  homepage "https://macsourceports.com/game/unreal"

  app "Unreal.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Unreal" directory. Copy the Maps, Sounds, Textures, and Music folders from an installation of Unreal into it. From here Unreal.app should run and be able to find the data. More information can be found on the README of the project.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
