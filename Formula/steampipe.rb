# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.6"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.6/steampipe_darwin_amd64.zip"
    sha256 "1cf2792903224273e20158dab4c600274ad751566c28c558fde19794dca57518"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.6/steampipe_linux_amd64.tar.gz"
    sha256 "b1c263b1e41a5559a916978ba1232d2f613c399d03dec1094d929c493a0fd61f"
  end

  def install
    bin.install "steampipe"
  end
end