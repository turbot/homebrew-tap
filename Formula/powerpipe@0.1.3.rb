# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PowerpipeAT013 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.3/powerpipe.darwin.arm64.tar.gz"
      sha256 "08e811ebb1623ff1d22f61bc7356dc42f49cdc027dbf9c0e53e0d921d9d3065e"

      def install
        bin.install "powerpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.3/powerpipe.darwin.amd64.tar.gz"
      sha256 "b18a0152a9d59dd84ec58934aae481db38781374a40e7463f55cc65dd916abca"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.3/powerpipe.linux.arm64.tar.gz"
      sha256 "fa246383acfb1f9c1b364806af1827cebf4be2cb86c7eb0fd5d4b1b5155b65d3"

      def install
        bin.install "powerpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/powerpipe/releases/download/v0.1.3/powerpipe.linux.amd64.tar.gz"
      sha256 "8ba7f1522695f1e7f8c573b7bf7c479feaed0f082902d487f079cad342f82f63"

      def install
        bin.install "powerpipe"
      end
    end
  end
end
