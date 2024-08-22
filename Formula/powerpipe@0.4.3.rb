# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PowerpipeAT043 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "0.4.3"

  on_macos do
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v0.4.3/powerpipe.darwin.amd64.tar.gz"
      sha256 "24c8d1020044062005cf6ccdaa5667d5cd7999df4d6453fd3bc75d0d5e4d23a2"

      def install
        bin.install "powerpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v0.4.3/powerpipe.darwin.arm64.tar.gz"
      sha256 "197b4fffdc8e2a0fa589f7f9f636f2f2ea0beb1a12e51fe4663e16a3927407ab"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v0.4.3/powerpipe.linux.amd64.tar.gz"
        sha256 "d8a9a556783bbb0c9f3ffe56cb580cc1f4f6d1b849f5a44653ccb2a18df30887"

        def install
          bin.install "powerpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v0.4.3/powerpipe.linux.arm64.tar.gz"
        sha256 "8ac00c0bd8b425af718e90d8cd22b535775ff5b650f6a8cc5a4a140030bb0a93"

        def install
          bin.install "powerpipe"
        end
      end
    end
  end
end