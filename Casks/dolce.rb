cask "dolce" do
  version "0.4.0"
  sha256 "bd0cbece19f0274655603959397f4c7e458cd2687163c743320431512b349fde"

  url "https://cf-bucket.begbie.com/dolce/Dolce-v#{version}.dmg"
  name "Dolce"
  desc "Shows how long you have been talking on video calls"
  homepage "https://dolce.begbie.com/"

  livecheck do
    url "https://cf-bucket.begbie.com/dolce/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Dolce.app"

  zap trash: [
    "~/Library/Application Scripts/com.begbie.dolce",
    "~/Library/Containers/com.begbie.dolce",
  ]
end
