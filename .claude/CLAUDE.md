# Homebrew Tap Repository

This is the Turbot Homebrew tap repository, providing Homebrew formulae for Turbot CLI tools.

## Repository Structure

```
Formula/           # Homebrew formula files
  {name}.rb       # Latest version formula
  {name}@x.y.z.rb # Versioned formula for specific version
```

## Conventions

### Formula File Structure

All formulae follow this pattern:

```ruby
# typed: false
# frozen_string_literal: true

class {ClassName} < Formula
  desc "Short description of the tool"
  homepage "https://example.com/"
  version "x.y.z"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/{repo}/releases/download/v{version}/{name}_darwin_amd64.{ext}"
      sha256 "{checksum}"
      def install
        bin.install "{binary_name}"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/{repo}/releases/download/v{version}/{name}_darwin_arm64.{ext}"
      sha256 "{checksum}"
      def install
        bin.install "{binary_name}"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/{repo}/releases/download/v{version}/{name}_linux_amd64.{ext}"
      sha256 "{checksum}"
      def install
        bin.install "{binary_name}"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/{repo}/releases/download/v{version}/{name}_linux_arm64.{ext}"
      sha256 "{checksum}"
      def install
        bin.install "{binary_name}"
      end
    end
  end
end
```

### Naming Conventions

- **Class name**: PascalCase (e.g., `Steampipe`, `Flowpipe`, `GuardrailsCli`)
- **Formula file**: lowercase with hyphens (e.g., `steampipe.rb`, `guardrails-cli.rb`)
- **Versioned formula**: `{name}@{version}.rb` (e.g., `steampipe@0.16.4.rb`)

### Adding a New Package

1. Check the GitHub releases for download URLs and checksums
2. Create the formula file in `Formula/`
3. Use `checksums.txt` from the release if available
4. Update `README.md` to list the new package
5. Test locally: `brew install --build-from-source ./Formula/{name}.rb`

### Updating an Existing Package

1. Get new version's checksums from the release
2. Update the main formula file (`{name}.rb`) with new version and checksums
3. Optionally create a versioned formula for the previous version

## Common Commands

```bash
# List releases for a package
gh release list --repo turbot/{repo} --limit 5

# View release assets
gh release view {tag} --repo turbot/{repo} --json assets --jq '.assets[].name'

# Get checksums from release
gh release view {tag} --repo turbot/{repo} --json assets --jq '.assets[] | select(.name == "checksums.txt") | .url' | xargs curl -sL

# Test formula locally
brew install --build-from-source ./Formula/{name}.rb

# Audit formula
brew audit --strict ./Formula/{name}.rb
```

## Current Packages

| Package | Repository | Homepage |
|---------|------------|----------|
| steampipe | turbot/steampipe | https://steampipe.io/ |
| flowpipe | turbot/flowpipe | https://flowpipe.io/ |
| powerpipe | turbot/powerpipe | https://powerpipe.io/ |
| tailpipe | turbot/tailpipe | https://tailpipe.io/ |
| guardrails-cli | turbot/guardrails-cli | https://turbot.com/guardrails/docs/reference/cli |

## Release Asset Patterns

Different repos use slightly different naming:

- **steampipe**: `steampipe_{os}_{arch}.zip` (macOS) / `.tar.gz` (Linux)
- **flowpipe**: `flowpipe_{os}_{arch}.tar.gz`
- **powerpipe**: `powerpipe_{os}_{arch}.tar.gz`
- **tailpipe**: `tailpipe.{os}.{arch}.tar.gz`
- **guardrails-cli**: `turbot_cli_{version}_{os}_{arch}.zip`
