# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.8.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.2/steampipe_darwin_amd64.zip"
    sha256 "072ec5f3cee649ae1051071e485058191283c8dfd23f42dd159d9345ee880ebc"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.2/steampipe_linux_amd64.tar.gz"
    sha256 "a990b6f9ed355e4ab014e213030d47b0f8b483f1a5d0ec8ffd6e93c8048bc212"
  end

  def install
    bin.install "steampipe"
  end
end
