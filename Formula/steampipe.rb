# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.7.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.7.1/steampipe_darwin_amd64.zip"
    sha256 "ecd9a5ebb46e5a5d44bad8a57efc5f12f3dd6abd65d165139755af82380f966e"
  end

  def install
    bin.install "steampipe"
  end
end
