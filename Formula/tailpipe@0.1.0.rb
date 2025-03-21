# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TailpipeAT010 < Formula
  desc "Open source SIEM for instant log insights, powered by DuckDB. Analyze millions of events in seconds, right from your terminal."
  homepage "https://tailpipe.io/"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.darwin.amd64.tar.gz"
      sha256 "4f5bc5f211335637d856e53a248cbbeb869be615d10a69dafc46437eddbf2452"

      def install
        bin.install "tailpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.darwin.arm64.tar.gz"
      sha256 "917a15699a65f59ca124169e24df3bdb987f8a85016b781cafd9eee1e515ab88"

      def install
        bin.install "tailpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.linux.amd64.tar.gz"
        sha256 "3d42babda81cb62863723799aee3a8d5de8dc3adbbc173f791ebe6fe44a0c959"

        def install
          bin.install "tailpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.linux.arm64.tar.gz"
        sha256 "3ab056101a441104aeabb1b017ab3310c5839d104ccf7fb81981cb464ee53452"

        def install
          bin.install "tailpipe"
        end
      end
    end
  end
end
