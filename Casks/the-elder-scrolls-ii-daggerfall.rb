cask "the-elder-scrolls-ii-daggerfall" do
  version :latest
  sha256 "c287d6d62b2f54c4541ad8644245dcf21fd443363a2e32f782da2b49bea22d80"

  url "https://github.com/Interkarma/daggerfall-unity/releases/download/v1.1.1/dfu_mac_universal-v1.1.1.zip"
  name "The Elder Scrolls II: Daggerfall"
  desc <<~DESC
Although not as popular as later entries, THe Elder Scrolls II: Daggerfall still has a devout cult following today, so much so that there is an online effort to recreate it in an updated engine.The Daggerfall Unity project, which like it says on the tin is a recreation of the game in the Unity engine, has been in the works for a few years now and for a while it's been mature enough to play through the whole game.I had been keeping an eye on this project and the main reason I held off on adding it before was that it was an unsigned Intel-only app, and I would have built a Universal 2 version except I have no experience with Unity so I put it on the backburner. However, in light of recent developments with Unity I now don't see myself ever messing with it, and since there are technical reasons why it is Intel-only for now, I've decided to add it as it is.For the game data, Daggerfall is free on places like GOG and Steam and the Daggerfall Unity project itself is available on GOG, but only for Windows, so I figured adding it here was still worthwhile.
Developer:  Bethesda Game Studios
Release Date:  September 20, 1996
  DESC
  homepage "https://macsourceports.com/game/daggerfall"

  app "DaggerfallUnity.app"

  postflight do
    puts <<~POSTFLIGHT
      Launch DaggerfallUnity.app. When prompted, select a folder with the files from an installation of The Elder Scrolls II: Daggerfall. From here OpenMW.app should run and be able to find the data. More information is available here.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
