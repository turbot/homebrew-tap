# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PowerpipeAT040 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/powerpipe/releases/download/v0.4.0/powerpipe.darwin.arm64.tar.gz"
      sha256 "ba21797928889cd8abafd77b8443c8e5b688b9507ba06b5e8ee3bfd81905afeb"

      def install
        bin.install "powerpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/powerpipe/releases/download/v0.4.0/powerpipe.darwin.amd64.tar.gz"
      sha256 "db02b2a1205ccbf6c7a4b56fdb4896359fb82327adacc4b9252253b21484780f"

      def install
        bin.install "powerpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/powerpipe/releases/download/v0.4.0/powerpipe.linux.arm64.tar.gz"
      sha256 "98eca3823fe550cd8b91e82fc454a1de9ced9ae0a71bdbab59cc32ce4fa73a35"

      def install
        bin.install "powerpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/powerpipe/releases/download/v0.4.0/powerpipe.linux.amd64.tar.gz"
      sha256 "2989ba47f732aa329719c1d2038256f043ed30549d0c1ed80998cdae6f900f04"

      def install
        bin.install "powerpipe"
      end
    end
  end
end