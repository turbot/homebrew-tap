# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.5/steampipe_darwin_amd64.zip"
    sha256 "34bb61bfd4fd21a150e1805d9e5311cfa488a3678d705541533e78008c5df0d5"
  end

  def install
    bin.install "steampipe"
  end
end
