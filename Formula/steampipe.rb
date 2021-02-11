# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.1.3/steampipe_darwin_amd64.zip"
    sha256 "c6e59cec86a89437b47376e33b5e9e4b53014450fc0b75e75622692829d9da0c"
  end

  def install
    bin.install "steampipe"
  end
end
