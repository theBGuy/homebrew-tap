cask "gitdesktop" do
  version "0.9.1"
  sha256 "e72d6b00a715cb49e9f264e53ad91ff31e39b6a415198111ae98041d2e2bd795"

  url "https://github.com/theBGuy/GitDesktop/releases/download/v#{version}/GitDesktop_#{version}_universal.dmg"
  name "GitDesktop"
  desc "AI-native, keyboard-first Git desktop client"
  homepage "https://gitdesktop.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

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
