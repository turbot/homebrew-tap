# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://https://steampipe.io/"
  version "0.2.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.2.4/steampipe_darwin_amd64.zip"
    sha256 "7ed07cb884e116d8d88c8c40f0f6c1e0b376928f2af2655d7d8c59eac1debc45"
  end

  def install
    bin.install "steampipe"
  end
end
