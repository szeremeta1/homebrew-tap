cask "vespertine" do
  version "0.11.3"
  sha256 "9e552c22fb58bf44a5cc1410fb772405b61a3eb64107a08aa039053e9d8abdfd"

  url "https://github.com/szeremeta1/Vespertine/releases/download/v#{version}/Vespertine-#{version}.dmg"
  name "Vespertine"
  desc "Bit-perfect hi-res music player"
  homepage "https://vespertineapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Vespertine.app"

  zap trash: [
    "~/Library/Application Support/Vespertine",
    "~/Library/Caches/org.szeremeta.Vespertine",
    "~/Library/HTTPStorages/org.szeremeta.Vespertine",
    "~/Library/HTTPStorages/org.szeremeta.Vespertine.binarycookies",
    "~/Library/Preferences/org.szeremeta.Vespertine.plist",
    "~/Library/WebKit/org.szeremeta.Vespertine",
  ]
end
