cask "sago-drop" do
  version "0.10.1"
  sha256 "f953cd701cf8946ab9a51076510138e032c081710630f968925bca4fbc4c402f"

  url "https://github.com/sago-cream/sago-drop/releases/download/v#{version}/Sago-Drop-#{version}.zip"
  name "Sago Drop"
  desc "Upload files from the menu bar"
  homepage "https://github.com/sago-cream/sago-drop"

  auto_updates true
  depends_on macos: :sonoma

  app "Sago Drop.app"
end
