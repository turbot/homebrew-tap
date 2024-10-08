# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SteampipeAT0234 < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.23.4"

  on_macos do
    on_intel do
      url "https://github.com/turbot/steampipe/releases/download/v0.23.4/steampipe_darwin_amd64.zip"
      sha256 "78ae4a74cd43a57c8deb39089cca3b282203f53f69bb6b75760a8420c628b14f"

      def install
        bin.install "steampipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/steampipe/releases/download/v0.23.4/steampipe_darwin_arm64.zip"
      sha256 "9a1e31b69f7984d9719aa2ff510d1e21340de3f5318643cd3c5d86a6347faee3"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/steampipe/releases/download/v0.23.4/steampipe_linux_amd64.tar.gz"
        sha256 "f0b4fc27d8d3de701f06252d4cd627bb0313cfcb6bba2cc288c7394a5bfbfcbd"

        def install
          bin.install "steampipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/steampipe/releases/download/v0.23.4/steampipe_linux_arm64.tar.gz"
        sha256 "7df9d06c7d3fceb9b0aad4fd082a18d1925fea9d1f9e0fbad669a5382eaa1d82"

        def install
          bin.install "steampipe"
        end
      end
    end
  end
end
