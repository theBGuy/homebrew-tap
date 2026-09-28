cask "gitdesktop" do
  version "0.13.0"
  sha256 "b959593efc714c104b0dfb3a73c8aadf76bb8b411ea73de1fa3a66cf1e5d3da6"

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
