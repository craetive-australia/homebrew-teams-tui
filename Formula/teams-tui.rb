class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-macos-arm64.tar.gz"
    sha256 "8aba62969104f5e4f2f0c2f684bdadc4b46f65ce3400c04623c5e9ff8f5821af"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-macos-amd64.tar.gz"
    sha256 "54b1eb8309a7557bd858830b9f37e9fa007b2b077e3363a773de7603bcc4ffe5"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-linux-amd64.tar.gz"
    sha256 "8df3f7a534d832f274d708cd5e8c4e493d14403b1b671a70e4d76959e527401b"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "teams-tui-macos-arm64" => "teams-tui"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "teams-tui-macos-amd64" => "teams-tui"
    elsif OS.linux?
      bin.install "teams-tui-linux-amd64" => "teams-tui"
    end
  end
end
