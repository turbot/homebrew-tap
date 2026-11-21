# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class TailpipeAT080 < Formula
  desc "Open source SIEM for instant log insights, powered by DuckDB. Analyze millions of events in seconds, right from your terminal."
  homepage "https://tailpipe.io/"
  version "0.8.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.8.0/tailpipe.darwin.arm64.tar.gz"
      sha256 "ee72c7b127f3ed29131c9137210bd2006e75705fdeb9b46f076afe02488a07ca"
    end
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.8.0/tailpipe.darwin.amd64.tar.gz"
      sha256 "9330dcf4cbb527097f1866f6e745530b814af4a54bd8a1dc41fcc0618b8e4df2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.8.0/tailpipe.linux.arm64.tar.gz"
      sha256 "d68c7004826f7f9f832714fd48588c185a4c977c274dab5c171309eeeb5004db"
    end
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.8.0/tailpipe.linux.amd64.tar.gz"
      sha256 "60b6a74d2e5cad4a428f25693e82b07173628169e9178a3d1e0e9a25a05962e1"
    end
  end

  def install
    bin.install "tailpipe"
  end
end
