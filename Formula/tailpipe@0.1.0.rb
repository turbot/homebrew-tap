# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TailpipeAT010 < Formula
  desc "TODO"
  homepage "https://tailpipe.io/"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.darwin.amd64.tar.gz"
      sha256 "f1570ff792ddfdb60298aef46a6c5b49fe1be8faa95a3241f32b7da9f3c1b33a"

      def install
        bin.install "tailpipe"
      end
    end
    on_arm do
      url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.darwin.arm64.tar.gz"
      sha256 "ab712e3fcb32d1280e75869a47f52c8310310284ba90313c00aecdfbb1e31f8f"

      def install
        bin.install "tailpipe"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.linux.amd64.tar.gz"
        sha256 "46da0f620c7d1a7750f2750698653fb45c6321f8c23601d9a0154d6287d95c22"

        def install
          bin.install "tailpipe"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/turbot/tailpipe/releases/download/v0.1.0/tailpipe.linux.arm64.tar.gz"
        sha256 "7a7b4291137d3fdd79fe6ee59a32201eb3a3185761080d4a96177872ba7da2b0"

        def install
          bin.install "tailpipe"
        end
      end
    end
  end
end
