# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0217 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.21.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.7/steampipe_darwin_arm64.zip"
      sha256 "e47048aa95fec708c11a25be3ee345546483fe0e72e37561b18950bf69a607eb"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.7/steampipe_darwin_amd64.zip"
      sha256 "be6781a22239dd4a1903f46953be73eb63657530b8e051f98eed370d7aa785eb"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.7/steampipe_linux_arm64.tar.gz"
      sha256 "65bef4e95c5614244be5ee4e97343cef84e24ae2cbe62cb162f8d806ef915600"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.7/steampipe_linux_amd64.tar.gz"
      sha256 "a142b441a8a7f4a00cfa2cc579a5c0b0f42debe33a85b7522981335e64e1bb59"

      def install
        bin.install "steampipe"
      end
    end
  end
end
