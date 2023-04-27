# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0195 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.19.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.5/steampipe_darwin_amd64.zip"
      sha256 "ca37616da055d90a2dae715a7879f7d88777e45e4524983d2e0e40748e12ac5f"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.5/steampipe_darwin_arm64.zip"
      sha256 "ca7eeafaf08b9c61890c861213281126dcb8ef71e4e0b1841402a9ea8bfb6d31"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.5/steampipe_linux_arm64.tar.gz"
      sha256 "4952287360ab690832818202a67d0e1002e663dd2b923765867645458856d5d7"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.5/steampipe_linux_amd64.tar.gz"
      sha256 "c968f4e8e2dac931ba52c49e92241a5b6280dbd8cd32bcee520f71fa7bee5632"

      def install
        bin.install "steampipe"
      end
    end
  end
end
