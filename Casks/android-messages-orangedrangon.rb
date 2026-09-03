# typed: false
# frozen_string_literal: true

cask "android-messages-orangedrangon" do
  version "6.1.1"
  sha256 "1a6a423a45dcc440ba6a259d9fe8e4359a6b8ef96df92a0f7872c6523e369cc2"

  url "https://github.com/OrangeDrangon/android-messages-desktop/releases/download/v#{version}/Android-Messages-v#{version}-mac-universal.zip"
  name "Android Messages"
  desc "Android Messages as a Cross-platform Desktop App"
  homepage "https://github.com/OrangeDrangon/android-messages-desktop"

  depends_on arch: :intel
  depends_on arch: :arm64

  app "Android Messages.app"

  uninstall trash: [
    "~/Library/Application Support/Android Messages",
    "~/Library/Preferences/pw.kmr.amd.plist",
    "~/Library/Saved Application State/pw.kmr.amd.savedState"
  ]
end
