# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.12.2"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.12.2/steampipe_darwin_amd64.zip"
    sha256 "d2529da6cbbe8dbf885473771153396ba1add3f238ed3727fdb1f35533ed88bc"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.12.2/steampipe_linux_amd64.tar.gz"
    sha256 "5d09ea3681512ba05cfb6013d759fb230870c2414866473eafcf777e60cf58c9"
  end

  def install
    bin.install "steampipe"
  end
end