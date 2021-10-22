# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.9.0"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.9.0/steampipe_darwin_amd64.zip"
    sha256 "7eee1cd11657840efff8c8d6d54c1ef3be6b4ca9c2cd71add6a516137727696c"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.9.0/steampipe_linux_amd64.tar.gz"
    sha256 "a26a9439b686c658c547db508af5c1187781eb3014964f3f312ab94042480cfa"
  end

  def install
    bin.install "steampipe"
  end
end
