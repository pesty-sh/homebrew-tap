# Numbered install

`brew install --HEAD pesty-sh/tap/qrbin` exists because `Formula/qrbin.rb` has a `head` line and no stable `url`. Homebrew will not install that formula without `--HEAD`.

A numbered install needs a git tag on [pesty-sh/qrbin](https://github.com/pesty-sh/qrbin) and the checksum of GitHub's tarball in this tap.

The tag `0.1.8` already points at an older qrbin commit. Do not move it. The release of current `master` is the next version number.

## Cut the tag in the qrbin repo

From `/Users/developers/Projects/rust/qrbin`, after `version` in `Cargo.toml` matches the new tag:

* `git tag -a 0.1.9 -m "qrbin 0.1.9"`
* `git push origin master`
* `git push origin 0.1.9`

## Checksum GitHub's tarball

The hash of a local `git archive` does not match the file Homebrew downloads.

* `curl -fsSL -o /tmp/qrbin.tar.gz https://github.com/pesty-sh/qrbin/archive/refs/tags/0.1.9.tar.gz`
* `shasum -a 256 /tmp/qrbin.tar.gz`

## Point the formula at that tarball

In this project, edit `Formula/qrbin.rb`. Set `url` to the tag URL above and `sha256` to the hash. Leave the `head` line in place so `--HEAD` still builds `master`.

* `git add Formula/qrbin.rb`
* `git commit -m "Install qrbin 0.1.9 from the tagged tarball."`
* `git push`

On a Mac that already has the tap:

* `brew update`
* `brew install pesty-sh/tap/qrbin`

That command no longer needs `--HEAD`. It downloads the tagged source and compiles it with Homebrew's Rust.
