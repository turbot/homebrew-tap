# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.4"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.4/steampipe_darwin_amd64.zip"
    sha256 "c9b63f1645a3497fb91d1d12d4b88a21264b7e386d095a403a149877da4f4b81"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.4/steampipe_linux_amd64.tar.gz"
    sha256 "fb9cc435e3e54fcd9ba38c7d497888d5e1c02bdf07315a911b6d832a8d4657be"
  end

  def install
    bin.install "steampipe"
  end
end