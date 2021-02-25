# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.2/steampipe_darwin_amd64.zip"
    sha256 "1a01cbb837192a4556efc7e7717dceea4839b1eba93088875f25dc27ff060e3e"
  end

  def install
    bin.install "steampipe"
  end
end
