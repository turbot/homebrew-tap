# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.0.17"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.0.17/steampipe_darwin_amd64.zip"
    
    sha256 "ff395487d696fd0f8d83e4ab2a52bf08579c2cf1f1316077cce5ca33e7dd20dd"
  end

  def install
    bin.install "steampipe"
  end
end
