# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class Powerpipe < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.9.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.9.0/powerpipe.darwin.arm64.tar.gz"
      sha256 "487030ae7def4856bb6a865a2426468f6028f97ec9887bee1e2e70197c0580dd"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.9.0/powerpipe.darwin.amd64.tar.gz"
      sha256 "bf6995f914e1b9e48231be1758277186338bd9954289d05fece22c6d7b69e27c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.9.0/powerpipe.linux.arm64.tar.gz"
      sha256 "719315313aa47c83b77d449fd52b4eeb33d66fccac673f712dbd4003563ddf26"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.9.0/powerpipe.linux.amd64.tar.gz"
      sha256 "46a9be507d3fa648aa3fd874493b90299a4d91cc8ef3ca3b91a4ec63f21b9343"
    end
  end

  def install
    bin.install "powerpipe"
  end
end
