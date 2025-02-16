cask "theme-hospital" do
  version :latest
  sha256 "60b1a94f94e0aaf2cbd2dcd865287cf2332610e474a851681c17a8b586e5ae03"

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v0.68.0/CorsixTH-0.68.0-arm64.dmg"
  name "Theme Hospital"
  desc <<~DESC
Famed Amiga developer Bullfrog released this second entry in the "Theme" series (following Theme Park) which allowed players to design and run a hospital. The name Theme Hospital may not make a ton of sense but the game was ridiculously popular.Note that for various reasons I was not able to get a Universal 2 port of CorsixTH working but I decided not to let that be a show stopper. Intel users must run the Intel build, Apple Silicon users can run either but the native Apple Silicon version is preferred for performance and battery reasons.
Developer:  Bullfrog Productions
Release Date:  March 28, 1997
  DESC
  homepage "https://macsourceports.com/game/themehospital"

  app "CorsixTH.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the app anywhere you want (preferrably your Applications folder). On first run, the game will ask for the location of your Theme Hopsital data folder.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
