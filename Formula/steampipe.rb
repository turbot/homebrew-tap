# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.4/steampipe_darwin_amd64.zip"
    sha256 "47528322c7f3e14748eecf4d1ad092c8be8955c028103e18eda4627dceeb2991"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.4/steampipe_darwin_arm64.zip"
    sha256 "b4b0a1c1ee199236d6e2870fe03a8b40bb6ee4c0f742008310c59461e64de5bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.4/steampipe_linux_amd64.tar.gz"
    sha256 "d5a772bbfc9981818c69f70c99de38c847486e7351b000cdf1ae11991f6eaa77"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.4/steampipe_linux_arm64.tar.gz"
    sha256 "e9c0d7e4f25122bf13c2031fd8b774054cdc78643ed80e10853b4f945ea230cd"
  end

  def install
    bin.install "steampipe"
  end
end