cask "nano" do
  version "0.2.2"
  sha256 "8e31bb21e0f445daa19ab2384f749eb5a8957d1ba1205120825254c6ea57e1c6"

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
