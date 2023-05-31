# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.20.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.5/steampipe_darwin_arm64.zip"
      sha256 "cae079ffda1fcc8be7bc8b90f59d494b596abd76697b6d4cdff08dd04f5e390b"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.5/steampipe_darwin_amd64.zip"
      sha256 "d435b29f05efaac900e94ea30f617e83032f239493139f114227b66a5d252604"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.5/steampipe_linux_arm64.tar.gz"
      sha256 "bdac799f508c7f03cccdaa608f04813ef8690f48a1fc4c4f537c5850487ccc9e"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.20.5/steampipe_linux_amd64.tar.gz"
      sha256 "24148fece722babdf84742d62b5e88d4f91ac634cad435bcca45d4c4224c0b1a"

      def install
        bin.install "steampipe"
      end
    end
  end
end
