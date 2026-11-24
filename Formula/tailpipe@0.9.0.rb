# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class TailpipeAT090 < Formula
  desc "Open source SIEM for instant log insights, powered by DuckDB. Analyze millions of events in seconds, right from your terminal."
  homepage "https://tailpipe.io/"
  version "0.9.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.9.0/tailpipe.darwin.arm64.tar.gz"
      sha256 "f566c75cc2478fa658ac0637c003baeca900b5d3a7c398aab8cf3e8248aefb0e"
    end
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.9.0/tailpipe.darwin.amd64.tar.gz"
      sha256 "9c393f73e281813dc3ca8d94f7f00cc949a9e206df518a034070b73bb5e84adf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.9.0/tailpipe.linux.arm64.tar.gz"
      sha256 "bc102185240942393c9679e38493c3adaa9e39c4b62cc3b6b8b619bd04ef3a2e"
    end
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.9.0/tailpipe.linux.amd64.tar.gz"
      sha256 "1b615914a52b3d99968155aaeb7b9112fd20fad6646ef8ea25e53a45963476a0"
    end
  end

  def install
    bin.install "tailpipe"
  end
end
