# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.8.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.3/steampipe_darwin_amd64.zip"
    sha256 "4076d120e3353ecdbdb2e95b83732d2490404db35297d05ac97c78256f5aa683"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.8.3/steampipe_linux_amd64.tar.gz"
    sha256 "2ba9837d2d9d88ed6452f27e3a27bf768906a5cac44c1c664d13954c403ea947"
  end

  def install
    bin.install "steampipe"
  end
end
