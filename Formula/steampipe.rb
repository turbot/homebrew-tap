# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.0/steampipe_darwin_amd64.zip"
    sha256 "fe2eabe82fd60d23798fc5137ceeca11db69974bd600bcacb25c4694188935b7"
  end

  def install
    bin.install "steampipe"
  end
end
