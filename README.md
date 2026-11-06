# pesty-sh Homebrew tap

Formulae published at [pesty.sh](https://pesty.sh).

Trust is stored on each Mac. Run it once:

* `brew tap pesty-sh/tap`
* `brew trust --tap pesty-sh/tap`

## qrbin

Offline QR generator. Source: [pesty-sh/qrbin](https://github.com/pesty-sh/qrbin).

* `HOMEBREW_NO_AUTO_UPDATE=1 brew install --HEAD pesty-sh/tap/qrbin`
* `qrbin --version`

`--HEAD` builds the latest commit on `master`. The first install compiles with Homebrew's Rust. On an Intel Mac the command is `/usr/local/bin/qrbin`. On Apple silicon it is `/opt/homebrew/bin/qrbin`.

This tap is not the `pesty` clipboard cask.
