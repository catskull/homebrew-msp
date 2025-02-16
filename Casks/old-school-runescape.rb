cask "old-school-runescape" do
  version :latest
  sha256 "0d9fcb9c7603a444e1451c5d3de862dd543a531bb9f33e94bcc8e120f07a5251"

  url "https://github.com/runelite/launcher/releases/download/2.7.3/RuneLite-aarch64.dmg"
  name "Old School RuneScape"
  desc "Though probably not the oldest MMO still in existence, RuneScape is definitely one of the most popular. Employing a unique approach to game structuring, developer Jagex itrated on the original design resulting in the modern version of RuneScape (dubbed by some as RuneScape 3), while also maintaining - since 2013 - a separate, parallel version of the game from its circa 2007 incarnation under the title Old School RuneScape. And while Jagex maintains clients for the versions, it also allows other developers to develop clients as well such as this one: RuneLite, which is open source and offers a signed and notarized build for the Mac.At this time RuneLite does not offer a Universal 2 app, so you will need to download the version that corresponds to your Mac. Apple Silicon users can run either build but performance is better with the Apple Silicon version.Also note that Old School RuneScape is a free to play MMO, meaning that it must be online in order to play. In addition, some features may only be available to users with an optional paid subscription. Mac Source Ports does not benefit financially from any transactions in the game, we are only linking to this game in order to highlight examples of source ports with modern Mac support.
Developer:  Jagex Limited
Release Date:  January 4, 2001"
  homepage "https://macsourceports.com/game/runescape"

  app "RuneLite.app"

  postflight do
    puts <<~POSTFLIGHT
      Unzip the app anywhere you want (preferrably your Applications folder). This game is an MMO and either bundles or downloads all the data it needs.
    POSTFLIGHT
  end
end
