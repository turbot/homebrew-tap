# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0241 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.24.1"

  on_macos do
    on_intel do
      url "https://github.com/turbot/steampipe/releases/download/v0.24.1/steampipe_darwin_amd64.zip"
      sha256 "0601d1c7163c6cf1cb6dbd812557ead939cb1cc7abf837e7017152e1a79b33e8"

      def install
        bin.install "steampipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/steampipe/releases/download/v0.24.1/steampipe_darwin_arm64.zip"
      sha256 "73b7494573fd726e304804164394c804619e2307bcc8b0bf6e8ec35fabe3650d"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/steampipe/releases/download/v0.24.1/steampipe_linux_amd64.tar.gz"
        sha256 "8c958b7e1937f76b5a78e2dda98923a0559759c64813fa4673a9b07524d5b668"

        def install
          bin.install "steampipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/steampipe/releases/download/v0.24.1/steampipe_linux_arm64.tar.gz"
        sha256 "3c54a2dcc306e3680924e66807b0ad56678f91ebd8b3db4f191b22735339c4d3"

        def install
          bin.install "steampipe"
        end
      end
    end
  end
end
