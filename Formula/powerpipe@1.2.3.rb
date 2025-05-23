# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PowerpipeAT123 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.2.3"

  on_macos do
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.2.3/powerpipe.darwin.amd64.tar.gz"
      sha256 "04b3aea4f29de51842f154ef8f6406146787c3f2f2f47c2839b88361b5d2c16c"

      def install
        bin.install "powerpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.2.3/powerpipe.darwin.arm64.tar.gz"
      sha256 "ab20a22fc8a2565e0bc99d9a3eb1e69ce9175bdd4e587c7d1302df716f234838"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v1.2.3/powerpipe.linux.amd64.tar.gz"
        sha256 "57e2c283a99e413f31b8fbb6feef05005379d9a2cf68baa5b18fcb3738f29d52"

        def install
          bin.install "powerpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v1.2.3/powerpipe.linux.arm64.tar.gz"
        sha256 "e4fe1eef04e45bd334668c4c0136a37e10ad9f9470ad3942a975cf27a7f5906f"

        def install
          bin.install "powerpipe"
        end
      end
    end
  end
end
