# typed: false
# frozen_string_literal: true

class GuardrailsCli < Formula
  desc "Command line tooling for Turbot Guardrails - used by developers to write scripts and create mods"
  homepage "https://turbot.com/guardrails/docs/reference/cli"
  version "1.35.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.35.0/turbot_cli_1.35.0_darwin_amd64.zip"
      sha256 "a384cef3a941473bb8a58e2468b2cbc6425b47dfec4a6793b796739ee9062723"

      def install
        bin.install "turbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.35.0/turbot_cli_1.35.0_darwin_arm64.zip"
      sha256 "adb84db4bf3549a2b639fa350d48ea673aced57a632e403dcc77f5badd3f8d6a"

      def install
        bin.install "turbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.35.0/turbot_cli_1.35.0_linux_amd64.zip"
      sha256 "a797e58b2f701824f327e6517bea9623246997ccc5b385f2d2eeb21def2d2f7c"
      def install
        bin.install "turbot"
      end
    end
  end
end
