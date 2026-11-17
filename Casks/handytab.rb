cask "handytab" do
  version "0.1.1"
  sha256 "2fd5f6be28502e31b0fefbfa0257f59016a6b74f9317eed9a508ac83d1f8db68"

  url "https://github.com/sago-cream/handy-tab/releases/download/v#{version}/HandyTab-#{version}.zip"
  name "HandyTab"
  desc "Open a favorite browser tab with a hand wave or trackpad tap"
  homepage "https://github.com/sago-cream/handy-tab"

  depends_on macos: :sonoma

  app "HandyTab.app"

  zap trash: [
    "~/.handytab_config.json",
    "~/Library/LaunchAgents/dev.hsichen.handytab.plist",
    "~/Library/Logs/HandyTab",
  ]
end
