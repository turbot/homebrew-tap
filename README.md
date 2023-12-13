# Turbot Homebrew Tap

## What is Homebrew?

[Homebrew](https://brew.sh) is a package manager for macOS (or Linux).

## What is a Tap?

A [Tap](https://docs.brew.sh/Taps) is a third-party (in relation to Homebrew) repository providing installation packages (formulae).

## How do I install packages from here?

```sh
brew install turbot/tap/{name}
```

You can also only add the tap which makes formulae within it
available in search results (`brew search` output):

```sh
brew tap turbot/tap
```

While you may search across taps, it is necessary to always use fully qualified name (incl. the `turbot/tap/` prefix) when referring to formulae in external taps such as this one outside of search.

## What packages are available?

Package | Install
|-|-
| [steampipe](https://steampipe.io/) | `brew install turbot/tap/steampipe`

## Open Source & Contributing

This repository is published under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0). Please see our [code of conduct](https://github.com/turbot/.github/blob/main/CODE_OF_CONDUCT.md). We look forward to collaborating with you!

## Get Involved

**[Join #contributors on Slack →](https://turbot.com/community/join)**

Want to help but not sure where to start? Pick up one of the `help wanted` issues:

- [Turbot Tap](https://github.com/turbot/homebrew-tap/labels/help%20wanted)
