class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.0/teams-tui-macos-arm64.tar.gz"
    sha256 "1a44a5eb219407ae5cc9e86248fa88231df0c5a9dd472ba2cdb21722830d3794"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.0/teams-tui-macos-amd64.tar.gz"
    sha256 "9b851a9a6923c2e9ff363f0c97521280c67fd0783d2f5825be49e8e25101a638"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.0/teams-tui-linux-amd64.tar.gz"
    sha256 "3acaca8972cfe388a153d281e7887aa2437ad4e30c99b03363cf34eb7d63c364"
  end

  def install
    bin.install "teams-tui"
  end
end
