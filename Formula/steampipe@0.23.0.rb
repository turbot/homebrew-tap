# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0230 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.23.0/steampipe_darwin_amd64.zip"
      sha256 "97db8540ccd932c5987381abcdb333487146dcc3f64d9b21578dac180ee4aa57"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.23.0/steampipe_darwin_arm64.zip"
      sha256 "ce4380a5b8db5763e68aa2574ed21ad20068dcaafa05d82d8ea31b9fecee713f"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.23.0/steampipe_linux_amd64.tar.gz"
      sha256 "a733d15eaabf857819d78c64fa0eeb2ffb671dc8dd2b3498b0b3277ec5d93998"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.23.0/steampipe_linux_arm64.tar.gz"
      sha256 "c43009df257e7e54eb08705b19bc55e95b893d2380548fe21719566b7e08f73e"

      def install
        bin.install "steampipe"
      end
    end
  end
end
