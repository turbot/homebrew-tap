# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT02011 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.20.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.11/steampipe_darwin_arm64.zip"
      sha256 "9bb0f137716fd6db368ea8190f5c741ff391bc7efb25b4cc429f1288d7000ce8"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.11/steampipe_darwin_amd64.zip"
      sha256 "1a739a157e6b6674faafeecb256b5519f1e482e1be498ded6288c3301cd71c96"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.11/steampipe_linux_arm64.tar.gz"
      sha256 "f8864caf6d60f059528ad92c1aae9f867ea410f8d9ea297d60ccbcb5c6d9e31e"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.11/steampipe_linux_amd64.tar.gz"
      sha256 "f3881e2dca43e40b5d6693604ce88dc92a73e43c1f21e2a4579f17335faee720"

      def install
        bin.install "steampipe"
      end
    end
  end
end