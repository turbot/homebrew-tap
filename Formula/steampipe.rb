# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.20.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.2/steampipe_darwin_amd64.zip"
      sha256 "50c070e713a1678eab7041d7165389fd778aee914f7a48ccdee72ff398ab64fb"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.2/steampipe_darwin_arm64.zip"
      sha256 "57b6ea3453a1e04e0a9c49d1dc508e47d31d3358bb4f9d32ab1d03f47d9b44ee"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.2/steampipe_linux_arm64.tar.gz"
      sha256 "f97772617f2f013bde810cd36498a5ee2de93d89168000ff8aba404d40af9f2a"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.2/steampipe_linux_amd64.tar.gz"
      sha256 "01e13eebf8d7d9b67f603536f6540849a6fa87c6c7fc7880ffe69ffc5853dd8b"

      def install
        bin.install "steampipe"
      end
    end
  end
end
