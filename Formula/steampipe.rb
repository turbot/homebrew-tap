# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.1/steampipe_darwin_arm64.zip"
      sha256 "5c3400960cf8440d50cb46856df17dea3b9dec9230d238335fd15d150d0b3ce0"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.1/steampipe_darwin_amd64.zip"
      sha256 "ad3f37cff530c660d786efc3ea4c1cedebdb6a97a04a05bdfaf95759f9cdfd28"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.1/steampipe_linux_arm64.tar.gz"
      sha256 "6159417e0ba7fa0e2a8da7887ffe28a204d1809bb3d00afefa4151c5e023457c"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.22.1/steampipe_linux_amd64.tar.gz"
      sha256 "fd1d82c8981df5354aaa26dd84a6be485992f8088f7f3337cba7b3857eaea425"

      def install
        bin.install "steampipe"
      end
    end
  end
end
