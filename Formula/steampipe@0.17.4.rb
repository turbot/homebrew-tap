# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0174 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.17.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.17.4/steampipe_darwin_amd64.zip"
      sha256 "96c9c5dc4134ab8a0f40c0707e5505dc3a8dbf1be162eb8fd147c2b2c065eb9d"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.17.4/steampipe_darwin_arm64.zip"
      sha256 "ef951e822b6376b6cb825be63a9c15ec0264ea315ddd05aa593c0f47aeade5eb"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.17.4/steampipe_linux_arm64.tar.gz"
      sha256 "da2bf15d502b18171ffb91c12fa267d9f94203082c6964b5e8bf0d6bc3a37d1c"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.17.4/steampipe_linux_amd64.tar.gz"
      sha256 "4193188bd62bd1059adf1e918beb7cd7721299efed12e6b6ab7340ba9c848a29"

      def install
        bin.install "steampipe"
      end
    end
  end
end
