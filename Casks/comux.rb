cask "comux" do
  version "0.7.2"
  sha256 "6fd7ef393c56d70406086d95bdad613292b4e6d182ae6ef56d92b32b7412eb4b"

  url "https://github.com/sago-cream/comux/releases/download/v#{version}/comux-#{version}.zip"
  name "comux"
  desc "macOS menu bar app to track and sort Codex account limits"
  homepage "https://github.com/sago-cream/comux"
  auto_updates true
  depends_on macos: :sonoma

  app "comux.app"

  zap trash: [
    "~/.comux",
  ]
end
