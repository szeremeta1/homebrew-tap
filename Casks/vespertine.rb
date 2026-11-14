cask "vespertine" do
  version "1.1.4"
  sha256 "086a83fafc9a00bf8a725bc898772111393795519e7c85d48089dfcf9fcddd6f"

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
