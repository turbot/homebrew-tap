# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FlowpipeAT031 < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/flowpipe/releases/download/v0.3.1/flowpipe.darwin.arm64.tar.gz"
      sha256 "63c58b31246e7137d69ab9ed97694d93efc6ebbb50501799486142b678ba7e70"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/v0.3.1/flowpipe.darwin.amd64.tar.gz"
      sha256 "1e91f503f109aa27e2fd47768160e6d41c81a78e9eab4b52a003d32258d23874"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/flowpipe/releases/download/v0.3.1/flowpipe.linux.arm64.tar.gz"
      sha256 "126218c11e9e0f8d891fcc561fbdeb30051df83513eaeb73ed6119850acfd8b0"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/v0.3.1/flowpipe.linux.amd64.tar.gz"
      sha256 "3bc27f97cf4eb02179934476310a151a48c0a24a621f8d1227c20d7f5941c7cd"

      def install
        bin.install "flowpipe"
      end
    end
  end
end