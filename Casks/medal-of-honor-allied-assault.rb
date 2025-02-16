cask "medal-of-honor-allied-assault" do
  version :latest
  sha256 "b3b32503bb85d8fbdb061acb480d408f26f715c01c8f1a805924d2012155b4f3"

  url "https://github.com/MacSourcePorts/MSPBuildSystem/releases/download/OpenMoHAA-0.70_2024-10-22/openmohaa-0.7.dmg"
  name "Medal of Honor: Allied Assault"
  desc "This is a neat little surprise. The Medal of Honor series started out its life as a first person shooter for the original PlayStation, a console not known for FPS titles, and whose game concept and story came from Steven Spielberg of all people. The series has seen over a dozen games including a reboot but in 2002 they released the third game, Medal of Honor: Allied Assault, for the PC on the engine we would now call id Tech 3, with some help from the ÜberTools enhancements made by Ritual Entertainment.While the source code was never released, the OpenMoHAA project appears to have taken ioquake3 as well as the Heavy Metal: F.A.K.K. 2 SDK (which used ÜberTools) and managed to make the game playable on modern systems. The result is not entirely unlike the Xash3D FWGS project.The game supports multiplayer as well as the expansion packs, though the options for video configuration are limited at this time and the expansion packs need to be launched from the command line. If you're familiar with editing the configuration files for Quake III: Arena however, it's not much different than that. For rhese reasons though, we're labeling this Early Access. Later on we may add a launcher menu to simplify things.NOTE: if you downloaded an earlier version there is a chance your save file might not work with this newer version. If that is the case and you want to continue from your saved game you can download the previous version here.
Developer:  2015, Inc.
Release Date:  January 22, 2002"
  homepage "https://macsourceports.com/game/mohaa"

  app "openmohaa.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/openmohaa/" directory. Copy the "main" directory from an existing installation of Medal of Honor: Allied Assault into it (and optionally the "mainta" and "maintt" folders from the expansions) From here openmohaa.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
