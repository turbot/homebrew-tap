# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.1/steampipe_darwin_amd64.zip"
    sha256 "00fc55d6bd8154ac796e44b3b4a4df8227b7dd477092c8e99f819dd5fe23214c"
  end

  def install
    bin.install "steampipe"
  end
end
