# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class TailpipeAT078 < Formula
  desc "Open source SIEM for instant log insights, powered by DuckDB. Analyze millions of events in seconds, right from your terminal."
  homepage "https://tailpipe.io/"
  version "0.7.8"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.7.8/tailpipe.darwin.arm64.tar.gz"
      sha256 "2371dcd45919ad1544c26f0b20e4b105b1816a0c31bbb575daa33f26ff949550"
    end
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.7.8/tailpipe.darwin.amd64.tar.gz"
      sha256 "66dd0a1cd2de35be4517c3e597bbb874b697677ab60463fb98626745eb29b920"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.7.8/tailpipe.linux.arm64.tar.gz"
      sha256 "f0911b1a62c413b17500754da36abccc762cba8dc08941770c613fd1d567f2cf"
    end
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.7.8/tailpipe.linux.amd64.tar.gz"
      sha256 "541d6dbf94238962eed0da2bc47c8512f407db962e82bfd706187bc94b86b219"
    end
  end

  def install
    bin.install "tailpipe"
  end
end
