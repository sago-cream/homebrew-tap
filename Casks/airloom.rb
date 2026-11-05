cask "airloom" do
  version "1.0.2"
  sha256 "21a6567efe9e36bd7869f277e02fda4417fadc8222ac73091100ae208b4e28c6"

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
