  cask "zork-i-the-great-underground-empire" do
    version :latest
    sha256 "ca285b166f7b8f9f6b13dba38dd518a89a5184c655926f80c882d5227ff6af3c"

    url "https://github.com/angstsmurf/spatterlight/releases/download/v1.3/Spatterlight.zip"
    name "Zork I: The Great Underground Empire"
    desc <<~DESC
True story: I'm old enough to have experienced the concept of buying Commodore 64 software in toy stores as a kid. I'll never forget, it had to have been at the tail end of the C64's lifecycle and I'm going through this bargain bin and finding nothing interesting, and then I stumbled across Zork I, in what had to be one of the slim case budget re-releases. I had no idea what it was other than I had read the name in Family Computing magazine.I go home, fire it up, it takes forver to load... and then only when I'm sitting at a text prompt does it hit me that this is a game without graphics. No wonder there were no screenshots. I'm pretty disappointed. I'm also bored and have nothing better to do so I start playing it.What follows is legit one of the best gaming experiences of my life. There's a reason this game is famous - provided you're willing to give it a shot the premise, writing, puzzles and exploration concepts will lure you in, and the anachronistic hodgepodge of elements makes for an eclectic universe. You descend downwards into the ruins of the Great Underground Empire, now an abandoned world.The backstory has been told at length elsewhere but the short version is that some computer scientists at MIT made a text adventure game called Dungeon to run on their mainframe and got the idea to make a company to sell versions of it for home computers. It proved to be too big to fit on the computers of the era so they split it up into a trilogy of games called Zork. The company was named Infocom and they are beyond legendary in retro gaming archaeology circles.The technology the games ran with has been reverse engineered so well that an entire community has spawned programming languages and toolkits to make new games with it and there's hundreds of text advantures as a result, including an annual contest that's been running for decades now.So unlike most games on this site there are literally dozens of options to play these games, and the current best in breed for the Mac is called Splatterlight.
Developer:  Infocom
Release Date:  1977
    DESC
    homepage "https://macsourceports.com/game/zork1"

    app "Spatterlight.app"

    postflight do
      puts <<~POSTFLIGHT
Run Splatterlight and then click File -> Open and find the file from an installation of Zork I (usually ZORK1.DAT or ZORK1.Z5). From there Splatterlight should run the game and add it to the library.For more information on getting the game's data onto your Mac check our FAQ
      POSTFLIGHT
    end
  end
