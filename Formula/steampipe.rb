# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.1.1/steampipe_darwin_amd64.zip"
    sha256 "806375054415928e762cd931f21ba6119c69f48dc4a8c815709a90def438deb6"
  end

  def install
    bin.install "steampipe"
  end
end
