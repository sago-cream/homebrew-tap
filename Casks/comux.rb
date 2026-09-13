cask "comux" do
  version "0.6.4"
  sha256 "1a204f910cfe78042b09e7ac1cbfba068578bff021758c8b1a6fa1a054ea8434"

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
