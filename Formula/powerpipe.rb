# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Powerpipe < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.2.2"

  on_macos do
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.2.2/powerpipe.darwin.amd64.tar.gz"
      sha256 "698f9401052bb3aabe893bd42b6397791fb5aa3f46efb93c0c8af6018b6dadb7"

      def install
        bin.install "powerpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.2.2/powerpipe.darwin.arm64.tar.gz"
      sha256 "61fec66a76225f2c88c40197271326ed92eeb037739f2af73fc98f6be9573521"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v1.2.2/powerpipe.linux.amd64.tar.gz"
        sha256 "74b6603961243e74899c90abf1a4d7511bbe1fd1019dd30c4ca2ad44de1af44d"

        def install
          bin.install "powerpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/powerpipe/releases/download/v1.2.2/powerpipe.linux.arm64.tar.gz"
        sha256 "cb3f885b262b50f78f4d074a08664d22abf6e4e8454926c8a3c0f04d1e682ba8"

        def install
          bin.install "powerpipe"
        end
      end
    end
  end
end
