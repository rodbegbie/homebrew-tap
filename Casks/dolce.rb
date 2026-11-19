cask "dolce" do
  version "0.3.0"
  sha256 "bb1731e9ab4d20c5b0a30a097d6b5cf51858e83f9d55ed0b99d865dacb3278f5"

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
    "~/Library/Application Support/com.begbie.dolce",
    "~/Library/Caches/com.begbie.dolce",
    "~/Library/Containers/com.begbie.dolce",
    "~/Library/Preferences/com.begbie.dolce.plist",
  ]
end
