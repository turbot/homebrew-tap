# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.5/steampipe_darwin_amd64.zip"
    sha256 "d32f5af009a76e112d5a6e855143b8eeafce38a8abb23b9618ee2f4f4e832894"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.5/steampipe_darwin_arm64.zip"
    sha256 "cee954cdd536e3f67876e6c349fd353509d551c351449f992cffa4dac78d3343"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.5/steampipe_linux_amd64.tar.gz"
    sha256 "26f37f1f818bcc3e01938ad7c058670d557507a79b92ba8bc843a91a8973f2e9"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.5/steampipe_linux_arm64.tar.gz"
    sha256 "d0b4351a752a010767a342cb7561ad2b3a51ee0a23b25a68011c13997d30e1a2"
  end

  def install
    bin.install "steampipe"
  end
end