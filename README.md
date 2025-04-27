# OmniSharp-Roslyn Homebrew Tap

[Homebrew](http://brew.sh/) tap for installing [omnisharp-roslyn](https://github.com/OmniSharp/omnisharp-roslyn) on OS X.

## Installation

First tap the repository with the following:

`brew tap trk54ylmz/omnisharp-roslyn`

Update brew:

`brew update`

Then you can install omnisharp (.NET Core standalone) with:

`brew install omnisharp`

or the Mono version (recommended):

`brew install omnisharp-mono`

## Dependencies

The `omnisharp` formula specifies `dotnet` as a dependency and will install it via homebrew during installation if it isn’t found. If you have an existing non-homebrew install of `dotnet` (or `dotnet-sdk` tap), you can use `--without-dotnet` with the install command to skip installing it. Please make sure `DOTNET_ROOT` environment variable is defined properly.

The `omnisharp-mono` formula specifies `mono` as a dependency and will install it via homebrew during installation if it isn’t found. If you have an existing non-homebrew install of `mono`, you can use `--without-mono` with the install command to skip installing it.

## Upgrading

Like other homebrew formula, when updates are available you can upgrade with `brew update` and `brew upgrade omnisharp`.
