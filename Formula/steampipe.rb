# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.1.0/steampipe_darwin_amd64.zip"
    sha256 "5481d2cf7b94cc9d57defdc32a592a71526bdc0a9d97b9daa5c1ecbf489570c7"
  end

  def install
    bin.install "steampipe"
  end
end
