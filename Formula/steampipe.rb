# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.2/steampipe_darwin_amd64.zip"
    sha256 "6c47e006705dc1e9310dc28494c87045f62edaa6ff6f890699c0105d48f2f5d5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.2/steampipe_darwin_arm64.zip"
    sha256 "56dd92468811780d7de5c7167df5f1591a3483e5261e8f2c7403eee32877524e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.2/steampipe_linux_amd64.tar.gz"
    sha256 "25224ce1bbe637c2b790f3c53b6156a2d0b3b7edd5d70f2d24c5a8e8a847bcb0"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.2/steampipe_linux_arm64.tar.gz"
    sha256 "d0ecf03f0e0aa6ba9ee81bccfd2266a1cf0cda618876f1c9e59008c90e3e23f7"
  end

  def install
    bin.install "steampipe"
  end
end