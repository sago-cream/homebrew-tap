cask "comux" do
  version "0.7.0"
  sha256 "d82cedd0a366a93fac37b50db862e4c39618e418b40d27c3f65c4161c6bf0911"

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
