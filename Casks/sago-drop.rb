cask "sago-drop" do
  version "0.9.0"
  sha256 "0601cceadc0f07e4ca65c969f7ca8b5c51c362fe9e8cd3c7dc2e271754f091b4"

  url "https://github.com/sago-cream/sago-drop/releases/download/v#{version}/Sago-Drop-#{version}.zip"
  name "Sago Drop"
  desc "Upload files from the menu bar"
  homepage "https://github.com/sago-cream/sago-drop"

  auto_updates true
  depends_on macos: :sonoma

  app "Sago Drop.app"
end
