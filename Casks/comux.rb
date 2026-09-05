cask "comux" do
  version "0.6.3"
  sha256 "a38ca8e21ac69c4c6dfc20f621153fdf89bbcca6953537e284168934f0039b3f"

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
