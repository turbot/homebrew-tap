# typed: false
# frozen_string_literal: true

class GuardrailsCliAT1331 < Formula
  desc "Command line tooling for Turbot Guardrails - used by developers to write scripts and create mods"
  homepage "https://turbot.com/guardrails/docs/reference/cli"
  version "1.33.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.33.1/turbot_cli_1.33.1_darwin_amd64.zip"
      sha256 "1bc8adce8c9683f34a9a9c45eead3f97eebcdfa39fe05f36f4b7b4cb8b31d0e3"

      def install
        bin.install "turbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.33.1/turbot_cli_1.33.1_darwin_arm64.zip"
      sha256 "ffcd5617e0dc814bef5a99cf9e31ec8cc0bb84f74a0cb2d0173cbf8b83c57799"

      def install
        bin.install "turbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.33.1/turbot_cli_1.33.1_linux_amd64.zip"
      sha256 "6aea47461907e7e9d682beb914399b912068a221db9f5938084c62e788281127"
      def install
        bin.install "turbot"
      end
    end
  end
end
