# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.1.2/steampipe_darwin_amd64.zip"
    sha256 "78f5b1e2a1184d8c1b260348b16390e6f5bf60b694a8d1571a1d03d428785a3d"
  end

  def install
    bin.install "steampipe"
  end
end
