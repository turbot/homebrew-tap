# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.6.0"
  bottle :unneeded

  if OS.mac?

    url "https://github.com/turbot/steampipe/releases/download/v0.6.0/steampipe_darwin_amd64.zip"
    sha256 "f305f5717fe036a99465780c342a17503aa0bb7e398bd20e44586ac9f612250a"
  end

  def install
    bin.install "steampipe"
  end
end
