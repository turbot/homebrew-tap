# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0220 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.0/steampipe_darwin_arm64.zip"
      sha256 "b3ca7c02e91af4dde489604a5baef3defb0eb33f43f9db9932c7b87836fa9612"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.0/steampipe_darwin_amd64.zip"
      sha256 "c06f1c85c58739728fbb305e49b29a1f412f39c27f89934504d5683560cbc556"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.0/steampipe_linux_arm64.tar.gz"
      sha256 "bf99c1daa65a75e09cfc30884ceba11459f191809e3b6c07714b37aa1a90b789"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.0/steampipe_linux_amd64.tar.gz"
      sha256 "ce853d6d4be74b81c3e9ee757bbc39fb9e65b52cc571657fd78513e70e716d31"

      def install
        bin.install "steampipe"
      end
    end
  end
end
