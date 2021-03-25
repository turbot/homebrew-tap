# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.3.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.3/steampipe_darwin_amd64.zip"
    sha256 "274247f8b79b48694c0f8876269e834a3c752b2611631baa43aa5ee56e6f5cb0"
  end

  def install
    bin.install "steampipe"
  end
end
