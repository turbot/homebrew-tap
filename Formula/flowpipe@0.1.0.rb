# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FlowpipeAT010 < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.darwin.arm64.tar.gz"
      sha256 "8337bfb1ceb77ebd18913849eaf92ddf39fc7db8b159ab4da79943c1e737e37c"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.darwin.amd64.tar.gz"
      sha256 "640265cee7d43a395cc21a56164ee375b846aa34e6c012b48f7ad4258f37c5fb"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.linux.arm64.tar.gz"
      sha256 "58e001b5fa7862113fbe2e3d5c40d7f1b98f73c41d9108f5f2cc6595868b547a"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.linux.amd64.tar.gz"
      sha256 "ec4e5d98793d5e1e643defc05ec468aa40ca69e40f02f8c5d6846ae7916b1b91"

      def install
        bin.install "flowpipe"
      end
    end
  end
end
