class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "4ec4de5c3e7e3b34e5a70cc681c517a8293da1343437eb70d0f81d0442a9c36e"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "987a9aff1c824a43182cc527ceb98ce86b48a98a988db2ac79dcf7f39e5e3b37"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "b445897b43886fe371776d72abba0f1e58f6b1645b5c6a61c2eb119c945a97c2"
  end

  def install
    bin.install "teams-tui"
  end
end
