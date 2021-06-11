# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.5.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.5.2/steampipe_darwin_amd64.zip"
    sha256 "0df710550043e01b6ff1cdd87573ef882a8fa5a23bece638527f79c48aab3acb"
  end

  def install
    bin.install "steampipe"
  end
end
