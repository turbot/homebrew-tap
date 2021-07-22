# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.7.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.7.0/steampipe_darwin_amd64.zip"
    sha256 "e237b6b8d9caaa78203c1504ecdc36fb828292bce7dafbe6b54d959687e86f75"
  end

  def install
    bin.install "steampipe"
  end
end
