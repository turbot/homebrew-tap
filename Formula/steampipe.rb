# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.6/steampipe_darwin_amd64.zip"
    sha256 "06d7ec6b1f97660b0937da3a8a9877dca07c7ac614ddd81e858a6b0433065e44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.6/steampipe_darwin_arm64.zip"
    sha256 "f60e7f04629727659fbc25a022f8711b199aea71e862190e8855713b59704697"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.6/steampipe_linux_amd64.tar.gz"
    sha256 "f7058a1bf2400e238f160506bdb7843f2f2fa7a786f2c13295d5114276a66879"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.6/steampipe_linux_arm64.tar.gz"
    sha256 "cca423be28707832d1cb62ce2e2ace269b6de8f27aebe3ed701ba4947fb0ad0f"
  end

  def install
    bin.install "steampipe"
  end
end