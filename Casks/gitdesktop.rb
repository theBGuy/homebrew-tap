cask "gitdesktop" do
  version "0.13.6"
  sha256 "71e83a6ce1a981969f053c776a58d4ff56d819631a184d9d4bba933fa1fa4e45"

  url "https://github.com/theBGuy/GitDesktop/releases/download/v#{version}/GitDesktop_#{version}_universal.dmg"
  name "GitDesktop"
  desc "AI-native, keyboard-first Git desktop client"
  homepage "https://gitdesktop.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "GitDesktop.app"

  zap trash: [
    "~/Library/Application Support/com.thebguy.gitdesktop",
    "~/Library/Caches/com.thebguy.gitdesktop",
    "~/Library/Cookies/com.thebguy.gitdesktop.binarycookies",
    "~/Library/HTTPStorages/com.thebguy.gitdesktop",
    "~/Library/HTTPStorages/com.thebguy.gitdesktop.binarycookies",
    "~/Library/Preferences/com.thebguy.gitdesktop.plist",
    "~/Library/Saved Application State/com.thebguy.gitdesktop.savedState",
    "~/Library/WebKit/com.thebguy.gitdesktop",
  ]
end
