cask "wifibuddy" do
  version "1.0.0"
  sha256 "1cadc7b22ed4b4e6971d545c8337f4b897ec8fe6506a1c5c998327403255055a"

  url "https://github.com/ken7y/MacWifiBuddy/releases/download/v#{version}/WiFiBuddy-#{version}.zip"
  name "WiFiBuddy"
  desc "WiFi diagnostics and network monitoring for macOS menu bar"
  homepage "https://github.com/ken7y/MacWifiBuddy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WiFiBuddy.app"

  zap trash: [
    "~/Library/Preferences/com.wifibuddy.app.plist",
  ]
end
