# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.3"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.3/steampipe_darwin_amd64.zip"
    sha256 "d56a300ec70914fbdaf5de593d0fd7396af6eb534a2d65a3a753a68a6dc6b315"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.3/steampipe_linux_amd64.tar.gz"
    sha256 "81fddab820587ab12bf3725861dc01ad4dd4501796d9d0463bc7a973604cb441"
  end

  def install
    bin.install "steampipe"
  end
end