class Smashbin < Formula
  desc "Offline image smasher with no telemetry and no network access"
  homepage "https://pesty.sh"
  license "MIT"
  url "https://github.com/pesty-sh/smashbin/archive/refs/tags/0.1.4.tar.gz"
  sha256 "f54c86bb4653558aba52857db3779ca6c3f65222c9cc7082a8eeb9a11e80c8e7"
  head "https://github.com/pesty-sh/smashbin.git", branch: "master"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "smashbin", shell_output("#{bin}/smashbin --version")
  end
end
