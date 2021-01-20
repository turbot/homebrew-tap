# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.0.15"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.0.15/steampipe_darwin_amd64.zip"
    sha256 "4f325481326883efe9ad347e100fb111cb75182e530b70635664e2469a3a7a76"
  end

  def install
    bin.install "steampipe"
  end
end
