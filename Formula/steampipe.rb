# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.1/steampipe_darwin_amd64.zip"
    sha256 "2fb933a04e848b0dd77351201c1d5bd86fa6839b3340a81efd83518f2dd0ecac"
  end

  def install
    bin.install "steampipe"
  end
end
