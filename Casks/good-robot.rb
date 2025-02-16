cask "good-robot" do
  version :latest
  sha256 "b10bf03c7aa489cd0d1e31794fd19920f82db5284603a2d750aa823fffd29ef1"

  url "https://github.com/MacSourcePorts/Good-Robot/releases/download/good-robot_1.1/Good-Robot-1.1.dmg"
  name "Good Robot"
  desc "In one of my many research sessions on potential projects, I stumbled across a list of commercial games with available source code and I noticed that, at the time, 2016's Good Robot was the most recent game on the list. While not from a major studio or featuring a bleeding edge 3D graphics engine, it's nonetheless a charming action game that was not previously available on Mac.Good Robot is a procedurally generated sci-fi roguelike shoot-em-up that pits you against other robots while upgrading your robot.I was going to say this is now the most recent game on Mac Source Ports, but 2019's Ion Fury takes that prize, so I'll say this is the most recent game on Mac Source Ports that is based on new code and not using a retro engine project.
Developer:  Pyrodactyl Games
Release Date:  Apr 5, 2016
Source Code Release Date:  August 3, 2020"
  homepage "https://macsourceports.com/game/goodrobot"

  app "Good-Robot.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Good-Robot" directory. Copy the "core" directory from an installation of Good Robot into it. From here Good-Robot.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
