# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.10.0"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.10.0/steampipe_darwin_amd64.zip"
    sha256 "3d28a311351c46ed2b6c98bd6681959d81aed472e81de254c942ac45b719c403"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.10.0/steampipe_linux_amd64.tar.gz"
    sha256 "76fd1017e883252ccacab64b1e5d0b38567fd5d3affd3b46d64a039e5dd40dcb"
  end

  def install
    bin.install "steampipe"
  end
end
