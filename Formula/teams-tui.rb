class TeamsTui < Formula
  desc "Terminal User Interface for Microsoft Teams using Microsoft Graph API"
  homepage "https://github.com/craetive-australia/teams-tui"
  version "0.1.5"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-arm64.tar.gz"
    sha256 "030b7918e1c6baec6dd709b81bdd241b3a05d2d283476bc78d296c2316795884"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-macos-amd64.tar.gz"
    sha256 "89129782b03c03e75af5b17a3941af67366a8fbbe1a08a42b517f7d6283feff5"
  elsif OS.linux?
    url "https://github.com/craetive-australia/teams-tui/releases/download/v0.1.5/teams-tui-linux-amd64.tar.gz"
    sha256 "f9c5c9511f5b6607d1085354fe6c4a67a3f38bcdfe902e16bf13e4eb1dbd758c"
  end

  def install
    bin.install "teams-tui"
  end
end
