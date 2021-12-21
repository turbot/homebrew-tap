# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.11.0"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.11.0/steampipe_darwin_amd64.zip"
    sha256 "e74226a52328fe5063a23be743b2ab90d84439ca2120868dad241b2ccc3740a3"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.11.0/steampipe_linux_amd64.tar.gz"
    sha256 "aab526674ef1a00116285dee9706712c1265384ba035827f8972f02be8310838"
  end

  def install
    bin.install "steampipe"
  end
end
