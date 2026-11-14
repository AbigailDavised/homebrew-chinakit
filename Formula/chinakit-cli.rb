class ChinakitCli < Formula
  desc "Inbound China CAAC Wh Power-Bank, TWOV & Statutory Compliance Reference CLI"
  homepage "https://chinakit.io"
  url "https://github.com/AbigailDavised/homebrew-chinakit/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "218e23a526ef142cdeeba3e56ca32041492d922d0bc7ba6c58a69cb6a5dbbbf9"
  license "MIT"

  depends_on "node"

  def install
    chmod 0755, "bin/chinakit-cli"
    bin.install "bin/chinakit-cli"
  end

  test do
    output = shell_output("#{bin}/chinakit-cli --version")
    assert_match "1.0.0", output
  end
end
