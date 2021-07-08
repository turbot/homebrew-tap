# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.6.2"
  bottle :unneeded

  if OS.mac?

    url "https://github.com/turbot/steampipe/releases/download/v0.6.2/steampipe_darwin_amd64.zip"
    sha256 "d4847b0924afb3d31fe999233dbc78106bfd18d62d7abbe37b79b5b6533fbaf0"
  end

  def install
    bin.install "steampipe"
  end
end
