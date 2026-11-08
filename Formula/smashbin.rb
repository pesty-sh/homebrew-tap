class Smashbin < Formula
  desc "Offline image smasher with no telemetry and no network access"
  homepage "https://pesty.sh"
  license "MIT"
  url "https://github.com/pesty-sh/smashbin/archive/refs/tags/0.1.5.tar.gz"
  sha256 "14e6e7063f540ac69668ea70abe433834f4b0835967cfe07f7253078f9178c53"
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
