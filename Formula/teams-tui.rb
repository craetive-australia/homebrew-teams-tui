class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "5515b128c6165d845d4bd583ab2a54571e7644ea9c4048234cc231d533652bc2"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "b1cf23d0be339e836413698521dfe7dd4cb69ba2298e779d758ff870d6691e28"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "ca321e0559b489440f4010d78f4dd5d05882bc5ba7e152e61c0315f317481371"
  end

  def install
    bin.install "teams-tui"
  end
end
