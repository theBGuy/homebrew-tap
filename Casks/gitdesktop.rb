cask "gitdesktop" do
  version "0.16.0"
  sha256 "783b5d49394dc9237dbf469bfadaa36d323fa3ad15fc1b4cfb6d7209efee0672"

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
