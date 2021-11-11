# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.9.1"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.9.1/steampipe_darwin_amd64.zip"
    sha256 "3941232c365c76b0b75080b7c40cbccdd6fc4678a1f2ccb123797fb8aae715c4"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.9.1/steampipe_linux_amd64.tar.gz"
    sha256 "692889cc226dae2eb4687bca850374cfa2dd79814fba2f529242d0d48fe8b9fd"
  end

  def install
    bin.install "steampipe"
  end
end
