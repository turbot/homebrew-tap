# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.4.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.4.2/steampipe_darwin_amd64.zip"
    sha256 "e2a5e6f64fbe4c2daea8ef317326875df540ffaf9d8b291592ad901d3f3dbfcf"
  end

  def install
    bin.install "steampipe"
  end
end
