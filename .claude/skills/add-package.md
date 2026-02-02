# Add Package to Homebrew Tap

Add a new package to the Turbot Homebrew tap.

## Usage

```
/add-package <github-repo-url>
```

## Instructions

When invoked with a GitHub repository URL:

1. **Fetch repository information**
   - Get the repo description for the formula `desc` field
   - Identify the homepage URL

2. **Get the latest stable release**
   - Use `gh release list --repo {repo}` to find releases
   - Prefer stable releases over pre-releases/RCs
   - Get the release tag (e.g., `v1.32.0`)

3. **Get release assets and checksums**
   - List assets: `gh release view {tag} --repo {repo} --json assets --jq '.assets[].name'`
   - Get checksums: `gh release view {tag} --repo {repo} --json assets --jq '.assets[] | select(.name == "checksums.txt") | .url' | xargs curl -sL`
   - Identify the binary name from the asset naming pattern

4. **Create the formula files**

   Create `Formula/{package-name}.rb` (main formula):
   ```ruby
   # typed: false
   # frozen_string_literal: true

   class {ClassName} < Formula
     desc "{description}"
     homepage "{homepage}"
     version "{version}"

     on_macos do
       if Hardware::CPU.intel?
         url "{darwin_amd64_url}"
         sha256 "{checksum}"
         def install
           bin.install "{binary_name}"
         end
       end
       if Hardware::CPU.arm?
         url "{darwin_arm64_url}"
         sha256 "{checksum}"
         def install
           bin.install "{binary_name}"
         end
       end
     end

     on_linux do
       if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
         url "{linux_amd64_url}"
         sha256 "{checksum}"
         def install
           bin.install "{binary_name}"
         end
       end
       if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
         url "{linux_arm64_url}"
         sha256 "{checksum}"
         def install
           bin.install "{binary_name}"
         end
       end
     end
   end
   ```

   Create `Formula/{package-name}@{version}.rb` (versioned formula):
   - Same content but class name is `{ClassName}AT{VersionWithoutDots}`
   - Example: `GuardrailsCliAT1320` for `guardrails-cli@1.32.0`

5. **Update README.md**
   - Add the new package to the "What packages are available?" table

6. **Update .claude/CLAUDE.md**
   - Add the package to the "Current Packages" table
   - Add the release asset pattern to the "Release Asset Patterns" section

7. **Create/update epic** (optional)
   - Create `.claude/epics/{package-name}.md` with release info and checksums

## Naming Conventions

- **Formula file**: lowercase with hyphens (e.g., `guardrails-cli.rb`)
- **Class name**: PascalCase (e.g., `GuardrailsCli`)
- **Versioned class**: `{ClassName}AT{version}` with dots removed (e.g., `GuardrailsCliAT1320`)

## Notes

- If arm64 builds are not available, omit those sections
- If linux_arm64 builds are not available, omit that section
- Ask the user if only pre-release versions are available with arm64 support
