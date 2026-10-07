cask "vespertine" do
  version "0.9.0"
  sha256 "d6a01c6ced5d9de69b473ffbb416890b4dfd668075d67f06ae166d653d241c15"

  url "https://github.com/szeremeta1/Vespertine/releases/download/v#{version}/Vespertine-#{version}.dmg"
  name "Vespertine"
  desc "Bit-perfect hi-res music player"
  homepage "https://szeremeta1.github.io/Vespertine/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

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
