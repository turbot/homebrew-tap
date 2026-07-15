# typed: false
# frozen_string_literal: true

class GuardrailsCliAT1330 < Formula
  desc "Command line tooling for Turbot Guardrails - used by developers to write scripts and create mods"
  homepage "https://turbot.com/guardrails/docs/reference/cli"
  version "1.33.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.33.0/turbot_cli_1.33.0_darwin_amd64.zip"
      sha256 "fb282aede01c315472286367ffd67a65ef5346a2d50018ecce5d441811cfc86c"

      def install
        bin.install "turbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.33.0/turbot_cli_1.33.0_darwin_arm64.zip"
      sha256 "a3d52b4cc2f02a54e03c057dcc86ef7ade1f0f3e18a6006c2eaaed96a8c2ba8f"

      def install
        bin.install "turbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.33.0/turbot_cli_1.33.0_linux_amd64.zip"
      sha256 "e90ef6f3d9798c66d2dc1502ad5a077ed9c19aa2f87ae5b49ebc05ababba7b68"
      def install
        bin.install "turbot"
      end
    end
  end
end
