cask "comux" do
  version "0.6.1"
  sha256 "bdfa1220a827f474919d5448c15047cf64df46988275a244a9f2f72851f48bb0"

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
