cask "sago-drop" do
  version "0.10.0"
  sha256 "94eca1f8c0aaee283b872af0b7b1df43ff43bc249479d645736a83a0872ff4e4"

  url "https://github.com/sago-cream/sago-drop/releases/download/v#{version}/Sago-Drop-#{version}.zip"
  name "Sago Drop"
  desc "Upload files from the menu bar"
  homepage "https://github.com/sago-cream/sago-drop"

  auto_updates true
  depends_on macos: :sonoma

  app "Sago Drop.app"
end
