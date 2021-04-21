cask "pastor" do
  version "1.8.2"
  sha256 "ac41e7f300d722fcd9733a4f13a984d211b20f95c94db4dc07ab537fd45f8370"

  url "https://mehlau.net/pastor/Pastor#{version.no_dots}-signed.dmg"
  name "Pastor"
  homepage "https://mehlau.net/pastor/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/href=.*?Pastor(\d+)(\d+)(\d+)-signed\.dmg/i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  app "Pastor.app"
end
