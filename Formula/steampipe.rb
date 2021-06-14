# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.5.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.5.3/steampipe_darwin_amd64.zip"
    sha256 "73599297f2f3e19f921f8b9076119a2d3d1fea1ecf7b136e119d36b2cc19768c"
  end

  def install
    bin.install "steampipe"
  end
end
