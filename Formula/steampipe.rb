# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.1.0/steampipe_darwin_amd64.zip"
    sha256 "3342b884ab3c3b150c8471dc51e2a5d0f106c0894d8302f45ad9d91b9c290d0b"
  end

  def install
    bin.install "steampipe"
  end
end
