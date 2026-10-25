class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.6"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-macos-arm64.tar.gz"
    sha256 "c3144bd7cf9e522b69f901fce358d55477326987141d07932c90e9bba7db1a52"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-macos-amd64.tar.gz"
    sha256 "2b35ad7d9114d11e47ebc1be6562b62858d9b13ef815d4066d589ba3b9d79e65"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.6/teams-tui-linux-amd64.tar.gz"
    sha256 "68feee4c846c7155a4a691d59c9980c7d3dd310fc520fd70c3930966fe6ac1b5"
  end

  def install
    bin.install "teams-tui"
  end
end
