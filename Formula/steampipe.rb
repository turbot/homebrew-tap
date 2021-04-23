# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.4.1/steampipe_darwin_amd64.zip"
    sha256 "497f5bab69e0f6567cdd52ba1ec0fecc459c8cd7ca3bd60c38ca3963c15a009c"
  end

  def install
    bin.install "steampipe"
  end
end
