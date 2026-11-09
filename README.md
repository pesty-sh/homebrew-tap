# pesty-sh Homebrew tap

This folder is the tap project:

`/Users/developers/Projects/pesty-sh/homebrew-tap`

GitHub: [pesty-sh/homebrew-tap](https://github.com/pesty-sh/homebrew-tap). Homepage: [pesty.sh](https://pesty.sh).

Edit formulae here. Commit and push from this folder. Homebrew keeps its own checkout and does not read this folder until you update it:

* `git status`
* `git add Formula/qrbin.rb`
* `git commit -m "Describe the formula change."`
* `git push`
* `brew update`

Homebrew's checkout on this Intel Mac is `/usr/local/Homebrew/Library/Taps/pesty-sh/homebrew-tap`. On Apple silicon it is under `/opt/homebrew/Library/Taps`. Leave that copy alone.

Trust is stored on each Mac. Run it once:

* `brew tap pesty-sh/tap`
* `brew trust --tap pesty-sh/tap`

## Install qrbin

Offline QR generator. Source: [pesty-sh/qrbin](https://github.com/pesty-sh/qrbin).

* `HOMEBREW_NO_AUTO_UPDATE=1 brew install pesty-sh/tap/qrbin`
* `qrbin --version`

That installs the tagged `0.1.9` tarball. `--HEAD` still builds the latest commit on `master`. The first install compiles with Homebrew's Rust. On an Intel Mac the command is `/usr/local/bin/qrbin`. On Apple silicon it is `/opt/homebrew/bin/qrbin`.

A numbered install without `--HEAD` is described in [docs/release.md](docs/release.md).

## Install smashbin

Offline image smasher. Source: [pesty-sh/smashbin](https://github.com/pesty-sh/smashbin).

* `HOMEBREW_NO_AUTO_UPDATE=1 brew install pesty-sh/tap/smashbin`
* `smashbin --version`

That installs the tagged `0.1.5` tarball. `--HEAD` still builds the latest commit on `master`.

## Install rmbin

Offline file and folder remover. Source: [pesty-sh/rmbin](https://github.com/pesty-sh/rmbin).

* `HOMEBREW_NO_AUTO_UPDATE=1 brew install pesty-sh/tap/rmbin`
* `rmbin --version`

That installs the tagged `v0.0.1` source tarball and compiles it with Homebrew's Rust. There is no bottle. `--HEAD` still builds the latest commit on `main`.

Deletion is permanent. Read the [disclaimer](https://github.com/pesty-sh/rmbin/blob/main/DISCLAIMER.md) before use.

## Docs

* [docs/editing.md](docs/editing.md) explains where a formula goes and how a change reaches `brew`.
* [docs/release.md](docs/release.md) explains how to drop `--HEAD`.

This tap is not the `pesty` clipboard cask.
