# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0222 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.22.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.2/steampipe_darwin_amd64.zip"
      sha256 "ef9465b6f76fa4f4b9bf263f0cacf640af4f778d4500934ef27e2b2302cb3a41"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.2/steampipe_darwin_arm64.zip"
      sha256 "43902f48d722e4eacb10009519e44f4187389b66686f9f264a9b97e92fa11045"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.2/steampipe_linux_amd64.tar.gz"
      sha256 "fd7cea52384c545dc326d0232c9f8af38b06a3f08705e9fb7ffdde4661b8cf58"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.2/steampipe_linux_arm64.tar.gz"
      sha256 "75d305908b07f26a686b39c259afb1ecaea247eb8ce2d84a724382f98197fe8f"

      def install
        bin.install "steampipe"
      end
    end
  end
end
