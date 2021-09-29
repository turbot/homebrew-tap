# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.8.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.4/steampipe_darwin_amd64.zip"
    sha256 "bd672460503c4c283b56cf0395963930e961231ea8b571f9199be74e9c9e1ec2"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.4/steampipe_linux_amd64.tar.gz"
    sha256 "e023042e2492dd39288e74c596bfc72ab809f00649c0ed9dff3b5efd89bede46"
  end

  def install
    bin.install "steampipe"
  end
end
