class Remap < Formula
  desc "Offline validator for hostname mapping specifications"
  homepage "https://github.com/Agenxy/remap"
  url "https://github.com/Agenxy/remap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d64a8edb77cb881207508e69c20bc11666e160609cfba312198f85043c3ebeba"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/remap")
  end

  test do
    assert_match "remap #{version}", shell_output("#{bin}/remap --version")
    assert_match "No system state changed.", shell_output("#{bin}/remap validate atlas 127.0.0.1")
  end
end
