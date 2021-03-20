# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.3.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.2/steampipe_darwin_amd64.zip"
    sha256 "7efbe743c910aef63d2ca782c2df37a9ce5efb3b16d622a6ef5e385828e06024"
  end

  def install
    bin.install "steampipe"
  end
end
