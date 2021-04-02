# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.3.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.3.5/steampipe_darwin_amd64.zip"
    sha256 "a114d48b0de34c1dba7421a1119a2a17dddb78f6a1ac0edb3f52b57b64b2270a"
  end

  def install
    bin.install "steampipe"
  end
end
