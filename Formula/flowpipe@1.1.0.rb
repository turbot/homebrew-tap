# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FlowpipeAT110 < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "1.1.0"

  on_macos do
    on_intel do
      url "https://github.com/turbot/flowpipe/releases/download/v1.1.0/flowpipe.darwin.amd64.tar.gz"
      sha256 "100c26f545def25636106cd8c544d8dca75e9c7dc635d443e163691df71cd146"

      def install
        bin.install "flowpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/flowpipe/releases/download/v1.1.0/flowpipe.darwin.arm64.tar.gz"
      sha256 "bd4442b6e0b3ad555e19f2de049868b7714cfc55e484b302ddf2857e8d2e877c"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/flowpipe/releases/download/v1.1.0/flowpipe.linux.amd64.tar.gz"
        sha256 "ddf5f4448286036840e2d2d377a10d870fa842ea0048208c79721fd156df868f"

        def install
          bin.install "flowpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/flowpipe/releases/download/v1.1.0/flowpipe.linux.arm64.tar.gz"
        sha256 "9877a4446b95d7424a84ed997de99829ac02c84231e141bf26fe8035139eeec3"

        def install
          bin.install "flowpipe"
        end
      end
    end
  end
end
