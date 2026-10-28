cask "lirnyk" do
  version "0.3.0"
  sha256 "309483614fc14c667a1dea4d8098abdced2570ae3722ca5238650b447d6142a0"

  url "https://github.com/cheyako/lirnyk-app/releases/download/v#{version}/Lirnyk.dmg",
      verified: "github.com/cheyako/lirnyk-app/"
  name "Lirnyk"
  desc "Rewrite selected text in any app with AI"
  homepage "https://lirnyk.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Lirnyk.app"

  uninstall quit: "com.metajourney.lirnyk"

  zap trash: [
    "~/Library/Application Support/Lirnyk",
    "~/Library/Preferences/com.metajourney.lirnyk.plist",
  ]
end
