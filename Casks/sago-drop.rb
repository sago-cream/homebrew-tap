cask "sago-drop" do
  version "0.11.0"
  sha256 "72b082e6c36594c9242d88aa01f5cdcc351b2ef01a83c903812d458fc414194c"

  url "https://github.com/sago-cream/sago-drop/releases/download/v#{version}/Sago-Drop-#{version}.zip"
  name "Sago Drop"
  desc "Upload files from the menu bar"
  homepage "https://github.com/sago-cream/sago-drop"

  auto_updates true
  depends_on macos: :sonoma

  app "Sago Drop.app"
end
