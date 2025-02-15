cask "re-volt" do
  version "23.1030a1"
  sha256 "b558bfeacf1e1c05b4ff722d77dd276607784f8aef12228e842cdd84fe3fc2c4"

  url "https://rvgl.org/downloads/rvgl_#{version}_macos.dmg"
  name "Re-Volt (RVGL)"
  desc "Re-Volt reimplementation"
  homepage "https://rvgl.org/"

  app "RVGL.app"

  zap trash: [
    "~/Library/Application Support/RVGL",
    "~/Library/Preferences/org.rvgl.plist",
    "~/Library/Saved Application State/org.rvgl.savedState",
  ]
  caveats <<~EOS
    Buy Re-Volt on GOG.com: https://af.gog.com/game/revolt?as=1692164182

    Installataion instructions:
    If you haven't already, make a "~/Library/Application Support/RVGL" directory. Copy the files from an installation of Re-Volt into it. From here RVGL.app should run and be able to find the data.
  EOS
end
