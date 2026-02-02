# Epic: Add Guardrails CLI to Homebrew Tap

## Status: COMPLETED

## Overview

Add the Turbot Guardrails CLI (`guardrails-cli`) as a new package in this Homebrew tap.

**Repository**: https://github.com/turbot/guardrails-cli
**Homepage**: https://turbot.com/guardrails/docs/reference/cli

## Background

The Turbot Guardrails CLI is a command-line tool for developers to write scripts and create mods for the Turbot Guardrails platform.

## Release Information

### Selected Version: v1.32.0 (Stable)
- Released: 2026-02-02
- Assets available:
  - `turbot_cli_1.32.0_darwin_amd64.zip`
  - `turbot_cli_1.32.0_darwin_arm64.zip`
  - `turbot_cli_1.32.0_linux_amd64.zip`
  - `turbot_cli_1.32.0_windows_amd64.zip`
  - `checksums.txt`

### Checksums (v1.32.0)
```
326d26f78bc189c8ee4a984c2db4fd4ebeea01e437ea42d559c984381469bd9d  turbot_cli_1.32.0_darwin_amd64.zip
6a361e7e9a7c6d025b50c4b7accffb98e327ef28f839f46256b57a7419646c5b  turbot_cli_1.32.0_darwin_arm64.zip
a1af0199881bfef719ee91c0e63e594fc689a3ff7ab762f6da5274ae6fb6795f  turbot_cli_1.32.0_linux_amd64.zip
1aad9ff13e6f9d715fbf8a200599bc68667fa41dfd5347a7e95d36bea1c16b4d  turbot_cli_1.32.0_windows_amd64.zip
```

## Tasks

- [x] Decide on version - Selected v1.32.0 (stable with arm64 support)
- [x] Create `Formula/guardrails-cli.rb` with the formula
- [ ] Test installation locally
- [x] Update `README.md` to include guardrails-cli in the package list
- [ ] Create PR with the changes

## Formula Template

Once version is decided, the formula will be:

```ruby
# typed: false
# frozen_string_literal: true

class GuardrailsCli < Formula
  desc "Command line tooling for Turbot Guardrails - used by developers to write scripts and create mods"
  homepage "https://turbot.com/guardrails/docs/reference/cli"
  version "{VERSION}"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/guardrails-cli/releases/download/v{VERSION}/turbot_cli_{VERSION}_darwin_amd64.zip"
      sha256 "{CHECKSUM}"
      def install
        bin.install "turbot"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/guardrails-cli/releases/download/v{VERSION}/turbot_cli_{VERSION}_darwin_arm64.zip"
      sha256 "{CHECKSUM}"
      def install
        bin.install "turbot"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/guardrails-cli/releases/download/v{VERSION}/turbot_cli_{VERSION}_linux_amd64.zip"
      sha256 "{CHECKSUM}"
      def install
        bin.install "turbot"
      end
    end
    # Note: No linux arm64 build available
  end
end
```

**Note**: The binary name inside the archive is `turbot`, not `guardrails-cli`.

## Installation Command

Once added, users will install with:
```bash
brew install turbot/tap/guardrails-cli
```

This will provide the `turbot` command.
