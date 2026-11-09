class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-macos-arm64.tar.gz"
    sha256 "0b607243e70a9193782627ac358022f20f698ffac4954794c615fb1aa46732c5"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-macos-amd64.tar.gz"
    sha256 "f212a6749e382eb10aca0a520bea46f7066d4b8414534480d5cb80a8187044be"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-linux-amd64.tar.gz"
    sha256 "5dce78762628bf68389d7aa4cd856b8b32dc9db2407aebcca343064a39f6ee86"
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
