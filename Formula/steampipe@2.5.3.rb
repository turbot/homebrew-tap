# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class SteampipeAT253 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "2.5.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.3/steampipe_darwin_arm64.zip"
      sha256 "370971e32d3352ddfd3e9f17311e09b5ab0234d6efa8ede252e37497353632f2"
    end
    on_intel do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.3/steampipe_darwin_amd64.zip"
      sha256 "b11643989fb7573f225e92e327153b03e4f0973276d860387c6c28aa7671b7f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.3/steampipe_linux_arm64.tar.gz"
      sha256 "02fd4789417e1ea1e7c36f39871d46812001ddb428a454659598b6260009ef54"
    end
    on_intel do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.3/steampipe_linux_amd64.tar.gz"
      sha256 "7c990eab6dae6aec2b638bb8787fe0c5d1b8c7aa51a3363657137f62e1ed73a4"
    end
  end

  def install
    bin.install "steampipe"
  end
end
