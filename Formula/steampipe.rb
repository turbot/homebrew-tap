# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.0/steampipe_darwin_amd64.zip"
    sha256 "919cd5a0e9ec84c677cde2449995f51ee387bb181c9eac19c874a3d0a7204b77"
  end

  def install
    bin.install "steampipe"
  end
end
