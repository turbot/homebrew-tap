# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.0"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.0/steampipe_darwin_amd64.zip"
    sha256 "c2dc547ed83135121f7af56e1e3da4091a27e9dd155ee055de44f22ec05474ef"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.13.0/steampipe_linux_amd64.tar.gz"
    sha256 "0eff0b4ea7bc67e1ae335e4c7cdbcffc51af033e14f95a1c27cb2768f6a50b68"
  end

  def install
    bin.install "steampipe"
  end
end