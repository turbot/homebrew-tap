# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class FlowpipeAT045 < Formula
  desc "Flowpipe is a cloud scripting engine. Automation and workflow to connect your clouds to the people, systems and data that matters."
  homepage "https://flowpipe.io/"
  version "0.4.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.5/flowpipe.darwin.arm64.tar.gz"
      sha256 "1c17fab31a39362835ea9f48c07e1a9bddb044dbac024bc8011c2e7d21bb2e9f"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.5/flowpipe.darwin.amd64.tar.gz"
      sha256 "8614765995d7898c2451b380159fdceae8ca7fce3448ac97747c48152caa04a3"

      def install
        bin.install "flowpipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.5/flowpipe.linux.arm64.tar.gz"
      sha256 "7310e654ee6c4a79e82adef8d322ea8a98d92e501f91165452104544869576b1"

      def install
        bin.install "flowpipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/flowpipe/releases/download/v0.4.5/flowpipe.linux.amd64.tar.gz"
      sha256 "6688bdd0bd468324a19ad7550359174a36d73e6f09da5291ad312ac8d46d63ae"

      def install
        bin.install "flowpipe"
      end
    end
  end
end