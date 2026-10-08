cask "gilvt" do
  version "0.1.0"
  sha256 "c4cf021dca24acbfadf507b567d5723e7e538766a1135b68b59f810683303577"

  url "https://github.com/Gilvt-WTJ/gilvt/releases/download/v#{version}/Gilvt-#{version}.dmg",
      verified: "github.com/Gilvt-WTJ/gilvt/"
  name "gilvt"
  desc "Native terminal for running and reviewing parallel Claude Code and Codex sessions"
  homepage "https://gilvt.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Gilvt.app"

  zap trash: [
    "~/.config/gilvt",
    "~/Library/Application Support/gilvt",
    "~/Library/Caches/gilvt",
    "~/Library/Caches/com.gilvt.app",
    "~/Library/HTTPStorages/com.gilvt.app",
    "~/Library/Preferences/com.gilvt.app.plist",
    "~/Library/Saved Application State/com.gilvt.app.savedState",
  ]
end
