# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.2"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.2/steampipe_darwin_amd64.zip"
    sha256 "8d47e8d77594aa63d080f2491acf17c90207e9de55b5243c649cbf80ec61591d"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.2/steampipe_linux_amd64.tar.gz"
    sha256 "09bd0df815f94cd09e5721900744745d1f98eda13a18a87a7d9c95793c965f94"
  end

  def install
    bin.install "steampipe"
  end
end