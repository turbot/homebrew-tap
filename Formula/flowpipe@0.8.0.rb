# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FlowpipeAT080 < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.8.0"

  on_macos do
    on_intel do
      url "https://github.com/turbot/flowpipe/releases/download/v0.8.0/flowpipe.darwin.amd64.tar.gz"
      sha256 "3c571b05268526e49eef5711dcabf10a35862498d8f46f6bf3b09255ed472423"

      def install
        bin.install "flowpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/flowpipe/releases/download/v0.8.0/flowpipe.darwin.arm64.tar.gz"
      sha256 "552f370dc46abf0dcda81651c77ca99e0342f48fa5ddcc3fa6e2497992479682"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/flowpipe/releases/download/v0.8.0/flowpipe.linux.amd64.tar.gz"
        sha256 "5fc5dce47263c9673ff5879718f5d2733bd9fb176ae1f01ff2d94c151ab92684"

        def install
          bin.install "flowpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/flowpipe/releases/download/v0.8.0/flowpipe.linux.arm64.tar.gz"
        sha256 "eda9d4a31c23542daea1af728356f9bd02fe0391c1411ed95ecd484a2251374c"

        def install
          bin.install "flowpipe"
        end
      end
    end
  end
end