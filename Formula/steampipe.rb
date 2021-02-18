# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.0/steampipe_darwin_amd64.zip"
    sha256 "f503bc50ff7bcb4ca6b010cdb1b67580559b2b33067fac61a4327dca044e31c4"
  end

  def install
    bin.install "steampipe"
  end
end
