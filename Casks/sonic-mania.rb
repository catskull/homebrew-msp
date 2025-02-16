cask "sonic-mania" do
  version :latest
  sha256 "167c0f0f26061b470f51bca1f1a56afe872a05c42b4b637934a024479ef70cf3"

  url "https://github.com/Sappharad/Sonic-Mania-Decompilation/releases/download/v1.0.0-mac/RSDKv5.zip"
  name "Sonic Mania"
  desc "Sonic Mania is a sidecrolling 2017 Sonic game released by Sega. After several years of substandard Sonic games, including an attempt at a fourth 2D sidescroller, Sega decided perhaps the hardcore fans and ROM hackers might do a better job, so they allowed this game to be developed by a team including Christian Whitehead, whose reverse engineered Retro Engine was designed for allowing Sonic ports onto other platforms. The result was the best received Sonic game in fifteen years.The Retro Engine was a reverse engineered engine for Sonic games and RSDK is a reverse engineering of the Retro Engine. It's reverse engineering all the way down.
Developer:  Christian Whitehead / PagodaWest Games / Headcannon
Release Date:  August 15, 2017"
  homepage "https://macsourceports.com/game/sonicmania"

  app "RSDKv5.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/RSDKv5" directory. Copy the "Data.rsdk" directory from an installation of Sonic Mania into it. From here RSDKv5.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
