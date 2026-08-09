# theBGuy's Homebrew tap

Personal [Homebrew](https://brew.sh) tap for
[GitDesktop](https://gitdesktop.app/) — an AI-native, keyboard-first Git
desktop client for Windows, macOS, and Linux.

## Install

```sh
brew install --cask thebguy/tap/gitdesktop
```

Or `brew tap thebguy/tap` and then `brew install --cask gitdesktop`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "thebguy/tap"
cask "gitdesktop"
```

The app keeps itself up to date after install (signed in-app updates), so the
cask is marked `auto_updates`. The cask itself is bumped automatically by
GitDesktop's release pipeline whenever a new version is published.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
