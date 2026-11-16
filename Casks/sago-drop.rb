cask "sago-drop" do
  version "0.11.1"
  sha256 "1c7a9816a067078a21bc4c4ade5c212679dd4f95fdfbc07d8154269cad11902d"

  url "https://github.com/sago-cream/sago-drop/releases/download/v#{version}/Sago-Drop-#{version}.zip"
  name "Sago Drop"
  desc "Upload files from the menu bar"
  homepage "https://github.com/sago-cream/sago-drop"

  auto_updates true
  depends_on macos: :sonoma

  app "Sago Drop.app"
end
