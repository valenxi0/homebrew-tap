cask "nano" do
  version "0.2.0"
  sha256 "4745cb2fed1c1041873f5c7b657750fa419d2ac47950027227e49a27a5f5a6a4"

  url "https://github.com/valenxi0/Nano/releases/download/v#{version}/Nano-#{version}.dmg"
  name "Nano"
  desc "Free, open source Dynamic Island for the notch"
  homepage "https://trynano.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Nano.app"

  uninstall quit: "com.nanoapp.Nano"

  zap trash: [
    "~/Library/Application Support/Nano",
    "~/Library/Caches/com.nanoapp.Nano",
    "~/Library/Preferences/com.nanoapp.Nano.plist",
  ]
end
