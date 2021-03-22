# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.3.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.3/steampipe_darwin_amd64.zip"
    sha256 "f4df9b414fbeb3b6be2b04f9a04773993140546f5e1b7be05ad94a8b27804234"
  end

  def install
    bin.install "steampipe"
  end
end
