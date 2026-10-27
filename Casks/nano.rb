cask "nano" do
  version "0.2.1"
  sha256 "23d11353923ce7d53cefbc065f53b05fd33681ac7f0597568c0141006c67b17b"

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
