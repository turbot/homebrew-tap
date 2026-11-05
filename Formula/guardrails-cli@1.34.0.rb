# typed: false
# frozen_string_literal: true

class GuardrailsCliAT1340 < Formula
  desc "Command line tooling for Turbot Guardrails - used by developers to write scripts and create mods"
  homepage "https://turbot.com/guardrails/docs/reference/cli"
  version "1.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.34.0/turbot_cli_1.34.0_darwin_amd64.zip"
      sha256 "20677cab1bcc269c595b73dc0f940bedce2893ffad37861909a2e24cd03766e1"

      def install
        bin.install "turbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.34.0/turbot_cli_1.34.0_darwin_arm64.zip"
      sha256 "ab89d99f0d68f4a125c8b1d1e96f866af03446a5f3c98ae8ece6d72a423a398c"

      def install
        bin.install "turbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/guardrails-cli/releases/download/v1.34.0/turbot_cli_1.34.0_linux_amd64.zip"
      sha256 "28d767adfa4b524dac1d1966c54079e1a2ca09a14f214ed99a3d3619500cbd28"
      def install
        bin.install "turbot"
      end
    end
  end
end
