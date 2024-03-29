# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0186 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.18.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.6/steampipe_darwin_arm64.zip"
      sha256 "0b362ce8784d8bb5d05038cf8052620c629d637f43d232597237b8eccea0a056"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.6/steampipe_darwin_amd64.zip"
      sha256 "0b3cafb29de3a0a4e16f9ac1b97f6fc96f4c1363331e4c8c71a35d92cc521a41"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.6/steampipe_linux_arm64.tar.gz"
      sha256 "f41e4c86501bd42ba9587ac8a667d05965c53da7f1303f1951ba35f94b9f850f"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.6/steampipe_linux_amd64.tar.gz"
      sha256 "78b34dbf0f265af1ed7ec004192851581469b69ba56e02d9e671e89198013b33"

      def install
        bin.install "steampipe"
      end
    end
  end
end
