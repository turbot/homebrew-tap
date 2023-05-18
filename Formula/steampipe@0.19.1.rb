# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0191 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.1/steampipe_darwin_arm64.zip"
      sha256 "16ab4f6b011f47354699117c41f82e5e6f9ba576f4436afecbf0b343c971fad7"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.1/steampipe_darwin_amd64.zip"
      sha256 "1336be578ce7dce818f1f17b0b28671ef3dbf950c8af2ed9cde05cd56bb04e7e"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.1/steampipe_linux_arm64.tar.gz"
      sha256 "4a60ed57be7c822644ec9b429eb96d2326d6f900328e37272b5b6ab7824a2ce1"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.19.1/steampipe_linux_amd64.tar.gz"
      sha256 "56f1ca04477879182efd0db55c90f90de219530182889f719cac0f46bf6fa13d"

      def install
        bin.install "steampipe"
      end
    end
  end
end