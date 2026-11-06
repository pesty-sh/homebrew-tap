class Qrbin < Formula
  desc "Offline-first QR generator with no telemetry and no network access"
  homepage "https://pesty.sh"
  license "MIT"
  url "https://github.com/pesty-sh/qrbin/archive/refs/tags/0.1.9.tar.gz"
  sha256 "61142a675c87f871612fa6ccd99d6b0ebaa7f36a02b123ed157d9799c1a50899"
  head "https://github.com/pesty-sh/qrbin.git", branch: "master"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "qrbin", shell_output("#{bin}/qrbin --version")
    png = IO.popen([bin/"qrbin", "--size", "64", "--format", "png", "hello"], "rb", &:read)
    assert png.start_with?("\x89PNG".b), "qrbin did not write a PNG"
  end
end
