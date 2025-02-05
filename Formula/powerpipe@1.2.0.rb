# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PowerpipeAT120 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.2.0"

  on_macos do
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.2.0/powerpipe.darwin.amd64.tar.gz"
      sha256 "041e36346f7c8037d612734dcc9ef05526fcc29443c4e580426e8467414d1719"

      def install
        bin.install "powerpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.2.0/powerpipe.darwin.arm64.tar.gz"
      sha256 "505dc8be115f363f030f4670f10cda2506810b47c0375ff1da597b0a37c7110b"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v1.2.0/powerpipe.linux.amd64.tar.gz"
        sha256 "6a7f45188e0f6e8e4c6106c461eb2c3aefc47ed4bde5c5f65f49f2f994ae3923"

        def install
          bin.install "powerpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v1.2.0/powerpipe.linux.arm64.tar.gz"
        sha256 "b894b65effb3d724b0a83795dfbc116b1059ecbbd1acf80bce538c16c5abb167"

        def install
          bin.install "powerpipe"
        end
      end
    end
  end
end
