cask "vespertine" do
  version "0.6.0"
  sha256 "e56c99200d5b10e8f37f4a31ef2b59773f5897515eb97af00c390efa74f4fe38"

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
