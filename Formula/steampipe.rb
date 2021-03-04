# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.3/steampipe_darwin_amd64.zip"
    sha256 "eb3afd4966f64817bf6210a62be4487e2391c47b5c15fd9673000be4fb4dc472"
  end

  def install
    bin.install "steampipe"
  end
end
