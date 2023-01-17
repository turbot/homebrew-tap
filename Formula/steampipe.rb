# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.18.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.1/steampipe_darwin_amd64.zip"
      sha256 "4372d801a0ffe6d56623c07ab51b9cbf4ebcd42172c0220ec12834424f0c77d4"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.1/steampipe_darwin_arm64.zip"
      sha256 "f7ed467197c50a5cc63fbf16498c08cb075ec44fe330243b3db2b28e011606c9"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.1/steampipe_linux_arm64.tar.gz"
      sha256 "5dcc6fd1264098ad7924465b18be1ea04149f3a92f15aa8265dfcbc03d5864f0"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.1/steampipe_linux_amd64.tar.gz"
      sha256 "d9c73055c38002931716644cd21c1aad4ece9513232af942094d8c397ea2f83e"

      def install
        bin.install "steampipe"
      end
    end
  end
end
