cask "airloom" do
  version "1.0.1"
  sha256 "8e51b95a09abdb7dd1d063dec35c367fd2767453d7aa5dfb54fd465c508902c9"

  url "https://github.com/sago-cream/Airloom/releases/download/v#{version}/Airloom-#{version}.zip"
  name "Airloom"
  desc "Native video wallpapers and animated lock screens"
  homepage "https://github.com/sago-cream/Airloom"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Airloom.app"

  uninstall quit:       "com.hsi.Torii",
            login_item: "Airloom",
            trash:      "~/Library/Screen Savers/Torii.saver"

  zap trash: [
    "~/Library/Caches/com.hsi.Torii",
    "~/Library/Preferences/com.hsi.Torii.plist",
    "~/Library/Saved Application State/com.hsi.Torii.savedState",
  ]

  caveats <<~EOS
    Before uninstalling, turn off Animate Lock Screen in Airloom to restore
    your previous wallpaper. Imported media and recovery backups are retained
    in ~/Library/Application Support/Torii, including when using --zap.
  EOS
end
