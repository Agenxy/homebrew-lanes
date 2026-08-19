class Supgang < Formula
  desc "Sovereign peer discovery for computers whose addresses change"
  homepage "https://github.com/Agenxy/supgang"
  url "https://github.com/Agenxy/supgang/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "1b266b83c7befd6ae067023bb5e05b897e90ce0341b96831c4fd8f3357767fcc"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/supgang-cli")
  end

  test do
    assert_match "supgang #{version}", shell_output("#{bin}/supgang --version")
    assert_match "Sovereign peer address discovery", shell_output("#{bin}/supgang --help")
  end
end
