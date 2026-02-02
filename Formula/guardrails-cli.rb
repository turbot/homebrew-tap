# typed: false
# frozen_string_literal: true

class GuardrailsCli < Formula
  desc "Command line tooling for Turbot Guardrails - used by developers to write scripts and create mods"
  homepage "https://turbot.com/guardrails/docs/reference/cli"
  version "1.32.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.32.0/turbot_cli_1.32.0_darwin_amd64.zip"
      sha256 "326d26f78bc189c8ee4a984c2db4fd4ebeea01e437ea42d559c984381469bd9d"

      def install
        bin.install "turbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.32.0/turbot_cli_1.32.0_darwin_arm64.zip"
      sha256 "6a361e7e9a7c6d025b50c4b7accffb98e327ef28f839f46256b57a7419646c5b"

      def install
        bin.install "turbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.32.0/turbot_cli_1.32.0_linux_amd64.zip"
      sha256 "a1af0199881bfef719ee91c0e63e594fc689a3ff7ab762f6da5274ae6fb6795f"
      def install
        bin.install "turbot"
      end
    end
  end
end
