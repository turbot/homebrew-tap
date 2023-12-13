# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class flowpipe < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.darwin.arm64.tar.gz"
      sha256 "f87354cacfe71c439b83dad19c2af44f37e22962683845c424053e9e9a0fabe4"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.darwin.amd64.tar.gz"
      sha256 "0fb7045f705585a414e9918ca9443b0749e1bbe7505fcb97e2c020b75b2c874e"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.linux.arm64.tar.gz"
      sha256 "7e731730ca5be8eb5a3cc424706893117f2f2cec0a6a03ae46ae59e1e085e279"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/0.1.0/flowpipe.linux.amd64.tar.gz"
      sha256 "16addba47c6de689a0ec8cc7381a9ef9cc3c18353a521286ed6733d48435c19a"

      def install
        bin.install "flowpipe"
      end
    end
  end
end
