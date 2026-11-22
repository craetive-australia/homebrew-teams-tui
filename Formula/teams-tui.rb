class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.7"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.7/teams-tui-macos-arm64.tar.gz"
    sha256 "5f6e247a721e2e5263c5928285af901dda3856d07575c6035f67e7d5cfe02402"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.7/teams-tui-macos-amd64.tar.gz"
    sha256 "2d7d525661a531e10e551817a5848be5392a112acdbd4007303c95b26962bf09"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.7/teams-tui-linux-amd64.tar.gz"
    sha256 "b5076eef40c2094713f01d75b2aa8376b220e0efb65d5fb2d45d524ff3d6a98d"
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
