# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0194 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.19.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.4/steampipe_darwin_arm64.zip"
      sha256 "405184bcb3d871889c33fb43ec3eefa6dddc7b99bd340e7ff4a5da0635908b0c"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.4/steampipe_darwin_amd64.zip"
      sha256 "4169296b8c8ced1f50f00d782969ceff7d6a74d746df42981462d357b7d68655"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.4/steampipe_linux_arm64.tar.gz"
      sha256 "ee6acfd3f85e7faf615c9424ae61110a212a08744bf57ba1ef4735875af1270c"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.4/steampipe_linux_amd64.tar.gz"
      sha256 "5d27d10b3d6a1c67aab71a8c714cd5ba138215b0e0b4946b58808a96143f0184"

      def install
        bin.install "steampipe"
      end
    end
  end
end