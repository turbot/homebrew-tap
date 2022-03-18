# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.2"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.2/steampipe_darwin_amd64.zip"
    sha256 "7120848d8ef261dd5d211c01bced753c74732d08f05f153430e24521cdeb1ce7"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.2/steampipe_linux_amd64.tar.gz"
    sha256 "84bb69ef5f7994c65d6fc5207e0f6ae40e7c0302f2adeff9f6ea8122cc482598"
  end

  def install
    bin.install "steampipe"
  end
end