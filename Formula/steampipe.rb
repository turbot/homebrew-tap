# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.4.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.4.3/steampipe_darwin_amd64.zip"
    sha256 "c795c379c5e8d09d474c0beebbd2e4a19ca4eae02a58b9955e038083148bd72c"
  end

  def install
    bin.install "steampipe"
  end
end
