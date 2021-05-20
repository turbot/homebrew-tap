# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.5.0/steampipe_darwin_amd64.zip"
    sha256 "371903e50bb98d8e1c9969e32441441acdd625659dd75254572c996a290a0d27"
  end

  def install
    bin.install "steampipe"
  end
end
