# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.7.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.7.2/steampipe_darwin_amd64.zip"
    sha256 "5e4454af77acc5367086f82a6762da858d49209e1f539ba613dc58e69198cf98"
  end

  def install
    bin.install "steampipe"
  end
end
