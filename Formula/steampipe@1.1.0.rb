# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT110 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v1.1.0/steampipe_darwin_amd64.zip"
      sha256 "45d82ae416a5a1ffe1646951c42d670b7d9662b7ba4a8fbde54e6a28bf2f9d85"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v1.1.0/steampipe_darwin_arm64.zip"
      sha256 "9c5b3fa5dc2dc4bcb02d1c56ec36bffb03f9ac1e707124aa8943bb033c4d6904"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/steampipe/releases/download/v1.1.0/steampipe_linux_amd64.tar.gz"
        sha256 "b4be5a8053c785a6a2e0ad1f757997883d6a36e6ab3e8abb1988976a9f6bfb89"

        def install
          bin.install "steampipe"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/steampipe/releases/download/v1.1.0/steampipe_linux_arm64.tar.gz"
        sha256 "a82c851a9c345fe369886e211121d1c147d46501dc7ed754e52fddc6f65d3329"

        def install
          bin.install "steampipe"
        end
      end
    end
  end
end
