# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.3/steampipe_darwin_amd64.zip"
    sha256 "e5c3682084fda9659b6f7530a7a6a8224d224c5fc31c47de96c278c03a873841"
  end

  def install
    bin.install "steampipe"
  end
end
