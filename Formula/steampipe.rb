# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0/steampipe_darwin_amd64.zip"
    sha256 "83c9386af087fdd9647d69d0f072775a895200469a030942a1aad75c85807565"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0/steampipe_darwin_arm64.zip"
    sha256 "0309f5e567aee5815b9751fe0ffe7a69aaab95128b9a86933175a04cfc7b1118"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0/steampipe_linux_amd64.tar.gz"
    sha256 "73595d87c442c2f1c44844831340754dddb2152fe6825fd1a30d663a40e4081b"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0/steampipe_linux_arm64.tar.gz"
    sha256 "bc242a9b1d360e9f8331a8ee692a8c4b168b7d3cf787642b0a4dd07081923254"
  end

  def install
    bin.install "steampipe"
  end
end