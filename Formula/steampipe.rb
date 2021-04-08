# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.3.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.6/steampipe_darwin_amd64.zip"
    sha256 "0d578bdf8aef90e08e7fdd020264e936ae4a91de6d5b1f2b69f330f48ab69676"
  end

  def install
    bin.install "steampipe"
  end
end
