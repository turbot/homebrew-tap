<p align="center">
    <h1 align="center">Turbot Homebrew Tap</h1>
</p>

<p align="center">
  <a aria-label="Steampipe logo" href="https://steampipe.io">
    <img src="https://steampipe.io/images/steampipe_logo_wordmark_padding.svg" height="28">
  </a>
  &nbsp;
  <a aria-label="License" href="LICENSE">
    <img alt="" src="https://img.shields.io/static/v1?label=license&message=MPL-2.0&style=for-the-badge&labelColor=777777&color=F3F1F0">
  </a>
</p>



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

While you may search across taps, it is necessary to always use fully qualified name (incl. the `turbot/tap/` prefix)
when referring to formulae in external taps such as this one
outside of search.

## What packages are available?

Package | Install
|-|-
| [steampipe](https://steampipe.io/) | `brew install turbot/tap/steampipe`

