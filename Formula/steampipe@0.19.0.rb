# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0190 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.0/steampipe_darwin_arm64.zip"
      sha256 "6416e5608b2b24d64ef01a410312c1d97adf5fe87739cc18fbd60be5998b121b"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.0/steampipe_darwin_amd64.zip"
      sha256 "3cf295ffa0838f92b1640a99d1c0b6863399f5777b8c40423c49244b891a288f"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.0/steampipe_linux_amd64.tar.gz"
      sha256 "705c4c25c7cc49c5f659d7dd260b53aff7facbf61eaeb8190b1c3915a9cf17fb"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.0/steampipe_linux_arm64.tar.gz"
      sha256 "d21cea2cf665b77e0c0f9761215b798df4274a87387527d1a60998e0c443de54"

      def install
        bin.install "steampipe"
      end
    end
  end
end
