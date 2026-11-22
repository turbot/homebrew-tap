# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class SteampipeAT252 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "2.5.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.2/steampipe_darwin_arm64.zip"
      sha256 "9e2d3b982e56f7f0dbd3466badceb9208ce4410d1d89949693b12463ede34cdb"
    end
    on_intel do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.2/steampipe_darwin_amd64.zip"
      sha256 "44f460ae202a2410e3ed0857c74188d9743f0ed17e39e18b8a090e0ef435acde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.2/steampipe_linux_arm64.tar.gz"
      sha256 "7e9225303c83f2af7e1f18ef23f3a73eada1886f5a836b9bc10ce218def4430e"
    end
    on_intel do
      url "https://github.com/turbot/steampipe/releases/download/v2.5.2/steampipe_linux_amd64.tar.gz"
      sha256 "9be27887156ddf6250de2c62456174cd0f18f9c11fcdc2de27eafe6fd7a75834"
    end
  end

  def install
    bin.install "steampipe"
  end
end
