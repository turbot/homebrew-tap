# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.3.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.4/steampipe_darwin_amd64.zip"
    sha256 "aefff2f95218e98df9d94a3f37d5528c3ae4b4497a35402ea25d59089d660efc"
  end

  def install
    bin.install "steampipe"
  end
end
