class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "71bce6879b13599e075b2a8700c4570fb6d7d5d572c58fe9d25cf3344f7cacfd"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "30acb20d8af3696b5d71244273b2bb6d6918211fbc686a79c39569c9644b9627"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "90253f0dc4b9ccd6c9e60c1c816436d8c96491f2c8fb8e9b839dff91496969e2"
  end

  def install
    bin.install "teams-tui"
  end
end
