cask "quodlibet" do
  version "4.4.0"
  sha256 "e06e1026e57699b6533fa0787da404c3dfdd3056eefcfcfce7a4a5be7f67b081"

  url "https://github.com/quodlibet/quodlibet/releases/download/release-#{version}/QuodLibet-#{version}.dmg",
      verified: "github.com/quodlibet/quodlibet/"
  name "Quod Libet"
  desc "Music player and music library manager"
  homepage "https://quodlibet.readthedocs.io/"

  livecheck do
    url "https://quodlibet.readthedocs.io/en/latest/downloads.html"
    regex(/QuodLibet[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match
  end

  app "QuodLibet.app"

  zap trash: [
    "~/Library/Preferences/io.github.quodlibet.quodlibet.plist",
    "~/Library/Saved Application State/io.github.quodlibet.quodlibet.savedState",
    "~/.quodlibet",
  ]
end
