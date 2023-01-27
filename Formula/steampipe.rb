# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.18.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.2/steampipe_darwin_arm64.zip"
      sha256 "9c15d7fc3871ba6db86b51b00ea24a1b74c6d7d3efc75a0889cd95654550c1ef"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.2/steampipe_darwin_amd64.zip"
      sha256 "e106df25cc7c7ddbaa627b36fe61dcf4acc1427aafa7065df3b7004fbb8cbc2d"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.2/steampipe_linux_arm64.tar.gz"
      sha256 "286699c6ac00d7ceccd5dfe6ff8d4108297a4d7bb6f6897b7eb33dc22de3d768"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.18.2/steampipe_linux_amd64.tar.gz"
      sha256 "c1127ecd4b69d8066986de40317803426c4b56d1ae6d19fb5cbf5b95e97a3b88"

      def install
        bin.install "steampipe"
      end
    end
  end
end
