# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class PowerpipeAT180 < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.8.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.0/powerpipe.darwin.arm64.tar.gz"
      sha256 "9aa20c934d8480dce398ac3692d54303223d147fe7c4b501427f91fa666e03ef"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.0/powerpipe.darwin.amd64.tar.gz"
      sha256 "bb97548b0a120ebb4f137042ad7490120a898842f19ff7ab9801445dd63f09c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.0/powerpipe.linux.arm64.tar.gz"
      sha256 "28af2a2bb5298f3b631f358585faaa886688c8a137e1dedf0eab0ec0b246cb1a"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.0/powerpipe.linux.amd64.tar.gz"
      sha256 "34b8b3973ba4cc9ef861990f3add9c14c77756dd445eb761348ec1d82bb6953b"
    end
  end

  def install
    bin.install "powerpipe"
  end
end
