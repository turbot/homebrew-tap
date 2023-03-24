# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0193 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.19.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.3/steampipe_darwin_arm64.zip"
      sha256 "a53b94b03fbe538bd3a944b7a2c528757590842c1e97014fd3e881f49c975dc9"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.3/steampipe_darwin_amd64.zip"
      sha256 "d5897d12285d67d9d5f21503e0f0faa7ced8abcfd6fd292ca99c15b6b7cb29ac"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.3/steampipe_linux_amd64.tar.gz"
      sha256 "ad0cecd55c10c7caba2b8d748e66324e831cbc84941086ef5c7b95cbc79370df"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.3/steampipe_linux_arm64.tar.gz"
      sha256 "2f498f9deb41272836601ca16e01ac3174acc9da79a221ae7a3c38f86cfd7288"

      def install
        bin.install "steampipe"
      end
    end
  end
end
