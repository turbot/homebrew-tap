# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.12.1"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.12.1/steampipe_darwin_amd64.zip"
    sha256 "3c29756a1441454de8090e3c693ebfcf4ae501546cbc2053ba72357c3797c7ff"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.12.1/steampipe_linux_amd64.tar.gz"
    sha256 "73ea8d307dc5eae5856ab4c7f636bb6af9e39b37d340b54b5817f79b6e20daa8"
  end

  def install
    bin.install "steampipe"
  end
end
