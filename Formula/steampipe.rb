5# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.11.2"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.11.2/steampipe_darwin_amd64.zip"
    sha256 "16f55bcf833343e2e0b6ac38b4e8596cf9e10f1db5f70e36d30fdb6d7113eccf"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.11.2/steampipe_linux_amd64.tar.gz"
    sha256 "d5d7fb6ad8d5ae2b472a343f1294c4d01ee69c9483de1647681a948510f56131"
  end

  def install
    bin.install "steampipe"
  end
end
