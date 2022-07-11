# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.15.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_darwin_amd64.zip"
    sha256 "67fb069b9dab1d90099dcc7198f0c468b8d7be123ab1a0fc75f9f0daacf1377b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_darwin_arm64.zip"
    sha256 "4d1a7d0561f340c26c61e2678fa35ee29a1954fe9a147400559be96bb64d4015"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_linux_amd64.tar.gz"
    sha256 "9cb32c6f1f26a23b0a81829ccbc9a37522f9c7f05fd98e30c08d9729e43fc4d1"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_linux_arm64.tar.gz"
    sha256 "f28fa7105480401801f833e81852e95dba92c90403ec8be28ef254e9767b655f"
  end

  def install
    bin.install "steampipe"
  end
end