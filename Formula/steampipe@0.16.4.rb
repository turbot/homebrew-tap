# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0164 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.16.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.16.4/steampipe_darwin_amd64.zip"
      sha256 "b0286526b0335d2a3c15259baf8e5e3329b67d5ff4c115af672322677310eb33"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.16.4/steampipe_darwin_arm64.zip"
      sha256 "b1f03d9492f22ac82f29928698b782f1aa015c463b4b5347658f9b37740e74ca"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.16.4/steampipe_linux_arm64.tar.gz"
      sha256 "c3f9b54b6b35d6e6189e08b2ad22bfb01b4967d31cb6b0553cff3ce221823c26"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.16.4/steampipe_linux_amd64.tar.gz"
      sha256 "20475ba3f6bde797a59b58f94779d6b02727962f459a22f7c4db7d37663e18fb"

      def install
        bin.install "steampipe"
      end
    end
  end
end
