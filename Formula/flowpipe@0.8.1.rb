# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FlowpipeAT081 < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.8.1"

  on_macos do
    on_intel do
      url "https://github.com/turbot/flowpipe/releases/download/v0.8.1/flowpipe.darwin.amd64.tar.gz"
      sha256 "89ed712739d0fc0226a80b42cafc3ac875e2507305e6413fe9698456e1ae9b23"

      def install
        bin.install "flowpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/flowpipe/releases/download/v0.8.1/flowpipe.darwin.arm64.tar.gz"
      sha256 "e85cb77e94c45799338c7afcf9305adfc1ab508761d1e3a3c1e4d69a9de6af8c"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/flowpipe/releases/download/v0.8.1/flowpipe.linux.amd64.tar.gz"
        sha256 "3be3bfb176286f0fb74bdb78776916906dc95ae0311f156bb457c39a286dd717"

        def install
          bin.install "flowpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/flowpipe/releases/download/v0.8.1/flowpipe.linux.arm64.tar.gz"
        sha256 "ee6708bc5221057c08f05258673bf6300aa09ebffd328b22526b388672933d51"

        def install
          bin.install "flowpipe"
        end
      end
    end
  end
end
