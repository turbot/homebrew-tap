# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.4.0/steampipe_darwin_amd64.zip"
    sha256 "a3697477fa82d947eab30ecfeebbc067f82e3bbda8f26a02aeb516e18320e4c4"
  end

  def install
    bin.install "steampipe"
  end
end
