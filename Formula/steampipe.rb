# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.1"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.1/steampipe_darwin_amd64.zip"
    sha256 "b20af20bebe45cce5948c18226e7ef7fdd5ba0a0c93a9c371341183e0ea876f8"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.1/steampipe_linux_amd64.tar.gz"
    sha256 "59660e7cca8964e36ba316be26beea342009bee865d291b569c0b39b65836c57"
  end

  def install
    bin.install "steampipe"
  end
end