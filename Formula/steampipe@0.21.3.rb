# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0213 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.21.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.3/steampipe_darwin_arm64.zip"
      sha256 "e6fc23a49d0d3a14946e32562f4a5c467e99a6f01cbcfd0a2eaab051ba219f7b"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.3/steampipe_darwin_amd64.zip"
      sha256 "ac922eaa0f23c17750ce92370cc58b9707e52d5bd31c48d28aa2d3f759f73d98"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.3/steampipe_linux_arm64.tar.gz"
      sha256 "d65c15773d0f300383a7694987b9f4ec74e8b728462e1295d8769cb2466d24f5"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.21.3/steampipe_linux_amd64.tar.gz"
      sha256 "b69b5008ad525c67faeff30ec77e3d6617a87ac01fe76f6f5ebc02384ddf93c8"

      def install
        bin.install "steampipe"
      end
    end
  end
end
