# Edit this tap

Work in `/Users/developers/Projects/pesty-sh/homebrew-tap`. The branch is `main`.

A command-line tool built from source is one Ruby file in `Formula/`. The name of the file is the install name. `Formula/qrbin.rb` is installed as `pesty-sh/tap/qrbin`.

A desktop app shipped as a `.dmg`, `.pkg`, or `.zip` is a file in `Casks/`. Those apps still need Apple's signature. A formula that compiles on the Mac does not.

## Change qrbin

The formula Homebrew installs is `Formula/qrbin.rb` in this project. The copy at `packaging/homebrew/qrbin.rb` inside the qrbin source repo is not the file `brew` reads.

* Edit `Formula/qrbin.rb`.
* `git diff`
* `git add Formula/qrbin.rb`
* `git commit -m "Say why the formula changed."`
* `git push`

Then, on a Mac that already tapped this repo:

* `brew update`
* `HOMEBREW_NO_AUTO_UPDATE=1 brew reinstall --HEAD pesty-sh/tap/qrbin`

`brew update` copies the pushed `main` branch into Homebrew's own checkout. Editing that checkout by hand is overwritten on the next update.

## Add another formula

* Add `Formula/<name>.rb`. The class name is the CamelCase form of `<name>`. `qrbin` is `class Qrbin`.
* Give it a `desc`, `homepage`, `license`, and either a `head` git URL or a stable `url` plus `sha256`.
* `git add Formula/<name>.rb`
* `git commit -m "Add the <name> formula."`
* `git push`
* `brew update`
* `brew install --HEAD pesty-sh/tap/<name>` when the formula has only a `head` URL.

Trust for the whole tap was already granted by `brew trust --tap pesty-sh/tap`. A new formula in this tap does not need a second trust command on a Mac that already ran that.
