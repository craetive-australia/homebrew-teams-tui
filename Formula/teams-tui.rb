class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "2768b06a83ff855022f2fed40226f8d34d63be2a3e668c7e14f602eafcebb4e3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "e729a91f5ce8b602a686709e45c815252a1c29e873d085df0915e6164067e6ce"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "5ed9f66c77196f3752a9915f6f1c39d33df7bb11d07b4ffcf7916f9b66ed173c"
  end

  def install
    bin.install "teams-tui"
  end
end
