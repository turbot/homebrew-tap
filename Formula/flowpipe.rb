# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flowpipe < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.2/flowpipe.darwin.arm64.tar.gz"
      sha256 "3ee1151a6101b35249cdc6dd4c83c5f7e1f97d3d30240b5f292bae5eea30362f"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.2/flowpipe.darwin.amd64.tar.gz"
      sha256 "1bcc972ff66a60893eac0ec2300eb5027093a36eef18b27bf1bd1b6c8d0a82c1"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.2/flowpipe.linux.arm64.tar.gz"
      sha256 "80a8bd155486af4f90cb7991c90bcb2edb7fa73d99923ad5c91f288bfbbcde93"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.2/flowpipe.linux.amd64.tar.gz"
      sha256 "d92860c706b16c169ec3a05179059e5c995b7f236bf3b1f325ed36aec9bb08ec"

      def install
        bin.install "flowpipe"
      end
    end
  end
end
