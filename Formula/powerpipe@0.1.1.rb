# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PowerpipeAT011 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.1/powerpipe.darwin.arm64.tar.gz"
      sha256 "2860b9267f11bdefc0d2e7b9486bd38536cec455f358f68fddb24bdfffbad0e6"

      def install
        bin.install "powerpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.1/powerpipe.darwin.amd64.tar.gz"
      sha256 "7ba2847721a170f6d5c30fb0bbc16636b1893d49da64e9ec6fd25d953085fc40"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.1/powerpipe.linux.arm64.tar.gz"
      sha256 "2d07ecfc9f5caaacc7399bf0dd6ef937ae4633631dcd07c5f07f1a5d940d77f3"

      def install
        bin.install "powerpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.1/powerpipe.linux.amd64.tar.gz"
      sha256 "1c8ecdab089954b26ff617d971027326f99149da3c96c3616656b5a89eefe0fe"

      def install
        bin.install "powerpipe"
      end
    end
  end
end
