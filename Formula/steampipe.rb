# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.8.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.5/steampipe_darwin_amd64.zip"
    sha256 "9b520a8c2d31a98e473d1860e74db719ae216c14add7d28fe973219fde53c794"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.5/steampipe_linux_amd64.tar.gz"
    sha256 "87310280013719893b4d1bd70df9df2d5ba070346dd33bad5e3b2e44e8ae56af"
  end

  def install
    bin.install "steampipe"
  end
end
