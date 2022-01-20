5# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.12.0"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.12.0/steampipe_darwin_amd64.zip"
    sha256 "7190dbc187713f010b912bdec9b97a1e293eeb8d117788b278f41f5b0f60ad20"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.12.0/steampipe_linux_amd64.tar.gz"
    sha256 "b95425eb5900a3c52f274717af536cf8b95ebe25e5ec8df343876dcdd7c1c7ab"
  end

  def install
    bin.install "steampipe"
  end
end
