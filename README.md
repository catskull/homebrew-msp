# Homebrew Casks for Mac Source Ports games (unofficial)

`brew install --cask catskull/homebrew-msp/<cask>`

Or `brew tap catskull/homebrew-msp` and then `brew install --cask <formula>`.

## Development
- `wget --mirror --convert-links --adjust-extension --page-requisites --no-parent -P mspsite https://www.macsourceports.com/games`
- from the `/Casks` dir: `bash all.sh` for all, or `ruby ../parse.rb ~/PATH/TO/GAME/game.html`
- generate markdown table (use brew ruby) `brew ruby list.rb`

## TODO

I haven't tested many/any of these so feedback is appreciated. Submit an issue or a PR with your fix.

The following games are not installable:
- [The Battle For Wesnoth](https://macsourceports.com/game/wesnoth)*
- [Ultima VII: The Black Gate](https://www.macsourceports.com/game/ultima7)*
- [Ultima VII Part Two: Serpent Isle](https://macsourceports.com/game/ultima7part2)*
- [Wolfenstein: Enemy Territory](https://macsourceports.com/game/wolfet)^

```
* - hosted on sourceforge and needs manual user download
^ - need to update my janky build script to handle their specific distribution
```

## List
| Game | Cask |
| ---- | ---- |
| [Abuse](https://macsourceports.com/game/abuse) | `abuse` |
| [Afterlife](https://macsourceports.com/game/afterlife) | `afterlife` |
| [Aliens versus Predator](https://macsourceports.com/game/avp) | `aliens-versus-predator` |
| [Ambermoon](https://macsourceports.com/game/ambermoon) | `ambermoon` |
| [Arx Fatalis](https://macsourceports.com/game/arxfatalis) | `arx-fatalis` |
| [Baldur's Gate II: Shadows of Amn](https://macsourceports.com/game/baldursgate2) | `baldurs-gate-ii-shadows-of-amn` |
| [Baldur's Gate](https://macsourceports.com/game/baldursgate) | `baldurs-gate` |
| [Billy Frontier](https://macsourceports.com/game/billyfrontier) | `billy-frontier` |
| [Blake Stone: Aliens of Gold](https://macsourceports.com/game/bstone1) | `blake-stone-aliens-of-gold` |
| [Blake Stone: Planet Strike](https://macsourceports.com/game/bstone2) | `blake-stone-planet-strike` |
| [Blood](https://macsourceports.com/game/blood) | `blood` |
| [Bug Squish](https://macsourceports.com/game/bugsquish) | `bug-squish` |
| [Bugdom 2](https://macsourceports.com/game/bugdom2) | `bugdom-2` |
| [Bugdom](https://macsourceports.com/game/bugdom) | `bugdom` |
| [Caesar 3](https://macsourceports.com/game/caesar3) | `caesar-3` |
| [Carmageddon](https://macsourceports.com/game/carmageddon) | `carmageddon` |
| [Catacomb 3-D](https://macsourceports.com/game/catacomb3d) | `catacomb-3-d` |
| [Catacomb Abyss](https://macsourceports.com/game/catacombabyss) | `catacomb-abyss` |                              | [Catacomb Apocalypse](https://macsourceports.com/game/catacombapocalypse) | `catacomb-apocalypse` |
| [Catacomb Armageddon](https://macsourceports.com/game/catacombarmageddon) | `catacomb-armageddon` |
| [Chex Quest Trilogy](https://macsourceports.com/game/chexquest) | `chex-quest-trilogy` |                          | [Circus Linux!](https://macsourceports.com/game/circuslinux) | `circus-linux` |
| [Command & Conquer: Red Alert](https://macsourceports.com/game/cncra) | `command-&-conquer-red-alert` |
| [Command & Conquer](https://macsourceports.com/game/cnc) | `command-&-conquer` |
| [Commander Keen in Aliens Ate My Babysitter](https://macsourceports.com/game/ckeen3) | `commander-keen-in-aliens-ate-my-babysitter` |
| [Commander Keen in Goodbye, Galaxy!](https://macsourceports.com/game/ckeen2) | `commander-keen-in-goodbye,-galaxy!` |
| [Commander Keen in Invasion of the Vorticons](https://macsourceports.com/game/ckeen1) | `commander-keen-in-invasion-of-the-vorticons` |
| [Cro-Mag Rally](https://macsourceports.com/game/cromagrally) | `cro-mag-rally` |
| [Daikatana](https://macsourceports.com/game/daikatana) | `daikatana` |
| [Day of the Tentacle](https://macsourceports.com/game/dott) | `day-of-the-tentacle` |
| [Defendguin](https://macsourceports.com/game/defendguin) | `defendguin` |
| [Descent II](https://macsourceports.com/game/descent2) | `descent-ii` |
| [Descent](https://macsourceports.com/game/descent) | `descent` |
| [Diablo](https://macsourceports.com/game/diablo) | `diablo` |
| [Disasteroids 3D](https://macsourceports.com/game/disasteroids3d) | `disasteroids-3d` |
| [DOOM 3: BFG Edition](https://macsourceports.com/game/doom3bfg) | `doom-3-bfg-edition` |
| [DOOM 3](https://macsourceports.com/game/doom3) | `doom-3` |
| [DOOM 64](https://macsourceports.com/game/doom64) | `doom-64` |
| [DOOM II](https://macsourceports.com/game/doom2) | `doom-ii` |
| [DOOM](https://macsourceports.com/game/doom) | `doom` |                                                           | [Duke Nukem 3D](https://macsourceports.com/game/duke3d) | `duke-nukem-3d` |
| [Duke Nukem II](https://macsourceports.com/game/duke2) | `duke-nukem-ii` |
| [Dune 2000](https://macsourceports.com/game/dune2000) | `dune-2000` |                                             | [Entombed!](https://macsourceports.com/game/entombed) | `entombed` |
| [Escape from Monkey Island](https://macsourceports.com/game/escapefrommonkeyisland) | `escape-from-monkey-island` |
| [Fallout 2](https://macsourceports.com/game/fallout2) | `fallout-2` |
| [Fallout](https://macsourceports.com/game/fallout) | `fallout` |
| [Final DOOM](https://macsourceports.com/game/finaldoom) | `final-doom` |
| [FreeSpace 2](https://macsourceports.com/game/freespace2) | `freespace-2` |
| [Full Throttle](https://macsourceports.com/game/fullthrottle) | `full-throttle` |
| [Gem Drop X](https://macsourceports.com/game/gemdropx) | `gem-drop-x` |
| [Good Robot](https://macsourceports.com/game/goodrobot) | `good-robot` |
| [Gothic II](https://macsourceports.com/game/gothic2) | `gothic-ii` |
| [Grim Fandango](https://macsourceports.com/game/grimfandango) | `grim-fandango` |
| [Half-Life: Blue Shift](https://macsourceports.com/game/halflifebshift) | `half-life-blue-shift` |
| [Half-Life: Opposing Force](https://macsourceports.com/game/halflifeopfor) | `half-life-opposing-force` |
| [Half-Life](https://macsourceports.com/game/halflife) | `half-life` |                                             | [Heretic](https://macsourceports.com/game/heretic) | `heretic` |
| [Heroes of Might and Magic II](https://macsourceports.com/game/homm2) | `heroes-of-might-and-magic-ii` |          | [Heroes of Might and Magic III](https://macsourceports.com/game/homm3) | `heroes-of-might-and-magic-iii` |
| [Hexen II](https://macsourceports.com/game/hexen2) | `hexen-ii` |                                                 | [Hexen: Beyond Heretic](https://macsourceports.com/game/hexen) | `hexen-beyond-heretic` |
| [Homeworld](https://macsourceports.com/game/homeworld) | `homeworld` |
| [Icewind Dale II](https://macsourceports.com/game/icewinddale2) | `icewind-dale-ii` |
| [Icewind Dale](https://macsourceports.com/game/icewinddale) | `icewind-dale` |
| [Indiana Jones and the Fate of Atlantis](https://macsourceports.com/game/indyfateofatlantis) | `indiana-jones-and-the-fate-of-atlantis` |
| [Indiana Jones and the Infernal Machine](https://macsourceports.com/game/indyinfernalmachine) | `indiana-jones-and-the-infernal-machine` |
| [Indiana Jones and the Last Crusade](https://macsourceports.com/game/indylastcrusade) | `indiana-jones-and-the-last-crusade` |
| [Ion Fury: Aftershock](https://macsourceports.com/game/ionfuryaftershock) | `ion-fury-aftershock` |
| [Ion Fury](https://macsourceports.com/game/ionfury) | `ion-fury` |
| [Jagged Alliance 2](https://macsourceports.com/game/jaggedalliance2) | `jagged-alliance-2` |
| [Jazz Jackrabbit 2](https://macsourceports.com/game/jazzjackrabbit2) | `jazz-jackrabbit-2` |
| [Jazz Jackrabbit](https://macsourceports.com/game/jazzjackrabbit) | `jazz-jackrabbit` |                           | [Loom](https://macsourceports.com/game/loom) | `loom` |
| [Mad Bomber](https://macsourceports.com/game/madbomber) | `mad-bomber` |
| [Maelstrom](https://macsourceports.com/game/maelstrom) | `maelstrom` |                                            | [Maniac Mansion](https://macsourceports.com/game/maniacmansion) | `maniac-mansion` |
| [Marathon 2: Durandal](https://macsourceports.com/game/marathon2) | `marathon--durandal` |
| [Marathon Infinity](https://macsourceports.com/game/marathoninfinity) | `marathon-infinity` |                     | [Marathon](https://macsourceports.com/game/marathon) | `marathon` |
| [Medal of Honor: Allied Assault](https://macsourceports.com/game/mohaa) | `medal-of-honor-allied-assault` |       | [Might and Magic VII: For Blood and Honor](https://macsourceports.com/game/mightandmagic7) | `might-and-magic-vii-for-blood-and-honor` |                                                                                              | [Mighty Mike](https://macsourceports.com/game/mightymike) | `mighty-mike` |
| [Monkey Island 2: LeChuck's Revenge](https://macsourceports.com/game/monkeyisland2) | `monkey-island--lechucks-revenge` |
| [Myth II: Soulblighter](https://macsourceports.com/game/myth2) | `myth-ii-soulblighter` |
| [NAM](https://macsourceports.com/game/nam) | `nam` |
| [Nanosaur II: Hatchling](https://macsourceports.com/game/nanosaur2) | `nanosaur-ii-hatchling` |
| [Nanosaur](https://macsourceports.com/game/nanosaur) | `nanosaur` |
| [Oddworld: Abe's Exoddus](https://macsourceports.com/game/oddworld-ae) | `oddworld-abes-exoddus` |
| [Oddworld: Abe's Oddysee](https://macsourceports.com/game/oddworld-ao) | `oddworld-abes-oddysee` |
| [Old School RuneScape](https://macsourceports.com/game/runescape) | `old-school-runescape` |
| [osu!](https://macsourceports.com/game/osu) | `osu` |
| [Otto Matic](https://macsourceports.com/game/ottomatic) | `otto-matic` |
| [Outlaws](https://macsourceports.com/game/outlaws) | `outlaws` |
| [Planescape: Torment](https://macsourceports.com/game/planescapetorment) | `planescape-torment` |
| [PowerSlave](https://macsourceports.com/game/powerslave) | `powerslave` |                                         | [Quake II](https://macsourceports.com/game/quake2) | `quake-ii` |
| [Quake III: Arena](https://macsourceports.com/game/quake3arena) | `quake-iii-arena` |                             | [Quake](https://macsourceports.com/game/quake) | `quake` |                                                        | [Re-Volt](https://macsourceports.com/game/revolt) | `re-volt` |                                                   | [Redneck Rampage](https://macsourceports.com/game/rr) | `redneck-rampage` |
| [Return to Castle Wolfenstein](https://macsourceports.com/game/rtcw) | `return-to-castle-wolfenstein` |
| [Rise of the Triad](https://macsourceports.com/game/rott) | `rise-of-the-triad` |
| [RollerCoaster Tycoon 2](https://macsourceports.com/game/rct2) | `rollercoaster-tycoon-` |
| [S.T.A.L.K.E.R.: Call of Pripyat](https://macsourceports.com/game/stalkercop) | `stalker-call-of-pripyat` |       | [Sam & Max Hit the Road](https://macsourceports.com/game/samandmax) | `sam--max-hit-the-road` |
| [Serious Sam: The First Encounter](https://macsourceports.com/game/serioussamfe) | `serious-sam-the-first-encounter` |
| [Serious Sam: The Second Encounter](https://macsourceports.com/game/serioussamse) | `serious-sam-the-second-encounter` |
| [Shadow Warrior Classic](https://macsourceports.com/game/swarrior) | `shadow-warrior-classic` |                   | [Sonic Mania](https://macsourceports.com/game/sonicmania) | `sonic-mania` |
| [Star Control II: The Ur-Quan Masters](https://macsourceports.com/game/sc2) | `star-control-ii-the-ur-quan-masters` |                                                                                                                 | [Star Wars Jedi Knight II: Jedi Outcast](https://macsourceports.com/game/swjk2) | `star-wars-jedi-knight-ii-jedi-outcast` |
| [Star Wars Jedi Knight: Dark Forces II](https://macsourceports.com/game/swjkdf2) | `star-wars-jedi-knight-dark-forces-ii` |
| [Star Wars Jedi Knight: Jedi Academy](https://macsourceports.com/game/swjkja) | `star-wars-jedi-knight-jedi-academy` |
| [Star Wars Jedi Knight: Mysteries of the Sith](https://macsourceports.com/game/swjkmots) | `star-wars-jedi-knight-mysteries-of-the-sith` |
| [Star Wars: Dark Forces](https://macsourceports.com/game/swdf) | `star-wars-dark-forces` |                        | [Star Wars: Rebel Assault II: The Hidden Empire](https://macsourceports.com/game/swrebelassault2) | `star-wars-rebel-assault-ii-the-hidden-empire` |                                                                                  | [Star Wars: Rebel Assault](https://macsourceports.com/game/swrebelassault) | `star-wars-rebel-assault` |
| [Star Wars: Shadows of the Empire](https://macsourceports.com/game/swsote) | `star-wars-shadows-of-the-empire` |
| [Star Wars: TIE Fighter](https://macsourceports.com/game/swtiefighter) | `star-wars-tie-fighter` |
| [Star Wars: X-Wing](https://macsourceports.com/game/swxwing) | `star-wars-x-wing` |
| [Strife](https://macsourceports.com/game/strife) | `strife` |                                                     | [Super 3D Noah's Ark](https://macsourceports.com/game/s3dna) | `super-d-noahs-ark` |
| [SuperTuxKart](https://macsourceports.com/game/supertuxkart) | `supertuxkart` |                                   | [System Shock](https://macsourceports.com/game/systemshock) | `system-shock` |
| [The Battle for Wesnoth](https://macsourceports.com/game/wesnoth) | `the-battle-for-wesnoth` |                    | [The Curse of Monkey Island](https://macsourceports.com/game/curseofmonkeyisland) | `the-curse-of-monkey-island` |
| [The Dig](https://macsourceports.com/game/thedig) | `the-dig` |
| [The Elder Scrolls II: Daggerfall](https://macsourceports.com/game/daggerfall) | `the-elder-scrolls-ii-daggerfall` |
| [The Elder Scrolls III: Morrowind](https://macsourceports.com/game/morrowind) | `the-elder-scrolls-iii-morrowind` |
| [The Secret of Monkey Island](https://macsourceports.com/game/secretofmonkeyisland) | `the-secret-of-monkey-island` |
| [The Settlers II](https://macsourceports.com/game/settlers2) | `the-settlers-ii` |
| [Theme Hospital](https://macsourceports.com/game/themehospital) | `theme-hospital` |
| [Tomb Raider](https://macsourceports.com/game/tombraider1) | `tomb-raider` |
| [Transport Tycoon Deluxe](https://macsourceports.com/game/ttd) | `transport-tycoon-deluxe` |
| [Tyrian 2000](https://macsourceports.com/game/tyrian2000) | `tyrian-2000` |
| [Tyrian](https://macsourceports.com/game/tyrian) | `tyrian` |
| [Ultima VII Part Two: Serpent Isle](https://macsourceports.com/game/ultima7part2) | `ultima-vii-part-two-serpent-isle` |
| [Ultima VII: The Black Gate](https://macsourceports.com/game/ultima7) | `ultima-vii-the-black-gate` |
| [Unreal Tournament](https://macsourceports.com/game/unrealtournament) | `unreal-tournament` |
| [Unreal](https://macsourceports.com/game/unreal) | `unreal` |
| [Vectoroids](https://macsourceports.com/game/vectoroids) | `vectoroids` |
| [Warzone 2100](https://macsourceports.com/game/warzone2100) | `warzone-` |
| [Wolfenstein 3-D: Spear of Destiny](https://macsourceports.com/game/sod) | `wolfenstein--d-spear-of-destiny` |
| [Wolfenstein 3-D](https://macsourceports.com/game/wolf3d) | `wolfenstein--d` |
| [Wolfenstein: Enemy Territory](https://macsourceports.com/game/wolfet) | `wolfenstein-enemy-territory` |
| [World War II GI](https://macsourceports.com/game/ww2gi) | `world-war-ii-gi` |
| [WRATH: Aeon of Ruin](https://macsourceports.com/game/wrath) | `wrath-aeon-of-ruin` |
| [X-COM: Terror from the Deep](https://macsourceports.com/game/xcomtftd) | `x-com-terror-from-the-deep` |
| [X-COM: UFO Defense](https://macsourceports.com/game/xcomufo) | `x-com-ufo-defense` |
| [Zak McKracken & the Alien Mindbenders](https://macsourceports.com/game/zakmckracken) | `zak-mckracken--the-alien-mindbenders` |
