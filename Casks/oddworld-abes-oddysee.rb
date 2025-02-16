cask "oddworld-abes-oddysee" do
  version :latest
  sha256 "a21220c611690f6dbe52b09025a2b618199eb939611d1d51b77e94fcec70c10b"

  url "https://github.com/MacSourcePorts/alive_reversing/releases/download/RELIVE_1.0/relive-ao-1.0-ao.dmg"
  name "Oddworld: Abe's Oddysee"
  desc "A cheery game with a grotesque protagonist and a dark premise, Oddworld: Abe's Oddysee is one of the best selling PlayStation games of all time. This side scroller has you playing as Abe, an enslaved creature trying to rescue as many of his comrades as he can once they discover that management is about to go all "Soylent Green" on them for their next product line.
Developer:  Oddworld Inhabitants
Release Date:  September 18, 1997"
  homepage "https://macsourceports.com/game/oddworld-ao"

  app "relive-ao.app"

  postflight do
    puts <<~POSTFLIGHT
      If you haven't already, make a "~/Library/Application Support/Oddworld/AO" directory. Copy the files from an installation of Oddworld: Abe's Oddysee into it. From here relive-ao.app should run and be able to find the data.For more information on getting the game's data onto your Mac check our FAQ
    POSTFLIGHT
  end
end
