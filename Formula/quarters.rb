class Quarters < Formula
  desc "Persistent alternate user-state spaces for native processes"
  homepage "https://github.com/Agenxy/quarters"
  url "https://github.com/Agenxy/quarters/archive/refs/tags/v0.1.0-alpha.1.tar.gz"
  sha256 "edd841e940acf01b0d82e6d5bfbcf3cac152743c3fe5b54c46beb3d7d72187f1"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/quarters-cli")
  end

  test do
    assert_match "quarters #{version}", shell_output("#{bin}/quarters --version")

    root = testpath/"root"
    system bin/"quarters", "--root", root, "create", "brew"
    assert_match "brew", shell_output("#{bin}/quarters --root #{root} list")

    home = shell_output("#{bin}/quarters --root #{root} exec brew -- /usr/bin/printenv HOME").strip
    assert_equal (root/"spaces/brew/home").to_s, home
  end
end
