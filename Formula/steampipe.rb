# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.21.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.1/steampipe_darwin_arm64.zip"
      sha256 "ce84c459202fd5a12bdc549b5d990efb789177f0c4f1d17ab3ea6e3a65baa516"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.1/steampipe_darwin_amd64.zip"
      sha256 "f656cf56b8fecb330d1fbe00b0157f41f39e76a68ec5bab5fa8de86f0c8e173b"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.1/steampipe_linux_arm64.tar.gz"
      sha256 "e5e6e1bbdba6a0fb523cafb88eaf7137238e4132b766e48f78fbd6acecae4595"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.1/steampipe_linux_amd64.tar.gz"
      sha256 "0813eede46fd31cc234c4ea1add7e6cb55cb1dc4b3a3054b87904f758431f589"

      def install
        bin.install "steampipe"
      end
    end
  end
end
