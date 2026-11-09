class Rmbin < Formula
  desc "Offline file and folder remover that overwrites with a text pattern"
  homepage "https://github.com/pesty-sh/rmbin"
  url "https://github.com/pesty-sh/rmbin/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "40808a04ab0aaf6a48d901d13653a85942ea1cfa6aeeea035772863ff38331cf"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/pesty-sh/rmbin.git", branch: "main"

  depends_on "rust" => :build

  def fetch
    system "cargo", "fetch", *std_cargo_fetch_args
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Deletion is permanent. Read the disclaimer before use:
        https://github.com/pesty-sh/rmbin/blob/main/DISCLAIMER.md
    EOS
  end

  test do
    assert_match "rmbin 0.0.1", shell_output("#{bin}/rmbin --version")

    sample = testpath/"notes.txt"
    sample.write("keep-me")
    assert_match "Dry run: nothing was changed.",
                 shell_output("#{bin}/rmbin --dry-run \"#{sample}\"")
    assert_path_exists sample
    assert_equal "keep-me", sample.read
  end
end
