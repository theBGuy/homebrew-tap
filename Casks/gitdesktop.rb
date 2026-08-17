cask "gitdesktop" do
  version "0.9.2"
  sha256 "9a57678db94c20b20516ea374f9db70ee72220cc47cc77b304de1705e872ed3d"

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
