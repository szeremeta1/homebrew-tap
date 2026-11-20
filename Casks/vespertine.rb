cask "vespertine" do
  version "1.2.1"
  sha256 "348ce40cec32964edccfb7f295f87690ca9db6df7680f1c18336402bd86e3eb8"

  url "https://github.com/vespertineapp/Vespertine/releases/download/v#{version}/Vespertine-#{version}.dmg"
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
