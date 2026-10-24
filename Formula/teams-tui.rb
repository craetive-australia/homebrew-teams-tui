class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "ad5c160a65069667ff5fa6e9a4707b171304608be1942b1f4c64571bd41634ce"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "644afa064fda10aac8a170930751a6a5ae1e2047cb938947cb32dcba9504c9f8"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "e3de2f955fb4031b2b6fcacd20b86903eeb067925ab86af8596cb7eb3033bc53"
  end

  def install
    bin.install "teams-tui"
  end
end
