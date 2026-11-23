cask "dolce" do
  version "0.4.1"
  sha256 "8d997dee49d2e989077f200694b23868f0c428314a5cee4fad7babcae186233f"

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
