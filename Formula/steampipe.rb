# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.0/steampipe_darwin_amd64.zip"
    sha256 "8a7fdacbf38f320be03fd1c2029230a73a2e51ebab916b2222aac168606f475a"
  end

  def install
    bin.install "steampipe"
  end
end
