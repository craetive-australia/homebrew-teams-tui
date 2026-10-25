class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "41b17aa28e38c60dddc598f02989de818edc838e5d9de715b12108c8cba0a4e1"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "57487703cc2f793b241f23b3d62dc60292850fbca9788cc7f84cdf3480efe166"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "e8abb7a19eeaf17e1265c09c2990dd359152003572cd9171c6f1f03e0fd55702"
  end

  def install
    bin.install "teams-tui"
  end
end
