# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class PowerpipeAT161 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.6.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.6.1/powerpipe.darwin.arm64.tar.gz"
      sha256 "27248f5e0765a0619dbf064f4e3abc60c523340232b6a2fc89a5dc362136d198"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.6.1/powerpipe.darwin.amd64.tar.gz"
      sha256 "c6f7633f51d7d5afeeda5dd84a7f77750562fef01f9b2710b8fa94a7ff278a4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.6.1/powerpipe.linux.arm64.tar.gz"
      sha256 "2c21d008e7156f6562b418ea142219a79e2b9c7a55bd12d914b5a286cacafc6b"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.6.1/powerpipe.linux.amd64.tar.gz"
      sha256 "23aa0c1cc7a59591f65c2657935988513a4eb204dc99a66abc5cbe04a45f9159"
    end
  end

  def install
    bin.install "powerpipe"
  end
end
