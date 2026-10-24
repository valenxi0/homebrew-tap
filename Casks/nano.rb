cask "nano" do
  version "0.1.0"
  sha256 "376fd66819d5a6f660aa89436968def7060f6313dcdbaf5463d02eb6960b9564"

  url "https://github.com/valenxi0/Nano/releases/download/v#{version}/Nano-#{version}.dmg"
  name "Nano"
  desc "Free, open source Dynamic Island for the Mac notch"
  homepage "https://trynano.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Nano.app"

  uninstall quit: "com.nanoapp.Nano"

  zap trash: [
    "~/Library/Application Support/Nano",
    "~/Library/Caches/com.nanoapp.Nano",
    "~/Library/Preferences/com.nanoapp.Nano.plist",
  ]
end
