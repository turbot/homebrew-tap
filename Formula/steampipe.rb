# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/0.5.1/steampipe_darwin_amd64.zip"
    sha256 "834ff64f9952a7a404a9152b10368526a4ad61ee2473220864849a91b29e3e6c"
  end

  def install
    bin.install "steampipe"
  end
end
