# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.8.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.1/steampipe_darwin_amd64.zip"
    sha256 "e50a9b77f1a3647bf288fb2890a344ec411131a2b9a57c9e850e7e51cf7b6856"
  end

  def install
    bin.install "steampipe"
  end
end
