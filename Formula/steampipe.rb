# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.7.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.7.3/steampipe_darwin_amd64.zip"
    sha256 "aeb9f8d53cb2dee8590658447f5a5782ab474c99af962c01e4daeb6be025c33d"
  end

  def install
    bin.install "steampipe"
  end
end
