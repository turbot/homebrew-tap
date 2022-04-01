# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.5"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.5/steampipe_darwin_amd64.zip"
    sha256 "f7cd0c27a09fc02db3a4d8d878e86c63682fcebd5da32c594128f51d67ac338d"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.5/steampipe_linux_amd64.tar.gz"
    sha256 "2c4a2470238a3b308fdd332771380403a9ac8cb33781b61bd466d6d8cd31caf0"
  end

  def install
    bin.install "steampipe"
  end
end