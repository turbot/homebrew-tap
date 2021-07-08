# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.6.1"
  bottle :unneeded

  if OS.mac?

    url "https://github.com/turbot/steampipe/releases/download/v0.6.1/steampipe_darwin_amd64.zip"
    sha256 "085da5e52a1d2e60c80d5c6b90e2d31c5315786064aeaf295dac4078a32642ed"
  end

  def install
    bin.install "steampipe"
  end
end
