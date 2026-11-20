class Tmux < Formula
  desc "Tmux terminal multiplexer with the io256 PTY reader"
  homepage "https://github.com/ZHDI-1/tmux"
  version "3.9-io256.2"
  license "ISC"
  depends_on macos: :sequoia

  on_arm do
    url "https://github.com/ZHDI-1/tmux/releases/download/v3.9-io256.2/tmux-io256-v3.9-io256.2-macos-arm64.tar.gz"
    sha256 "b7456965a5405d9b8d3c27083fb5313a76a2837dd0ff158be03d10d76b84ca6b"
  end

  on_intel do
    url "https://github.com/ZHDI-1/tmux/releases/download/v3.9-io256.2/tmux-io256-v3.9-io256.2-macos-x86_64.tar.gz"
    sha256 "637a0213686aeb9183c836cd22772d7c470f9b57e6be5ccf299164ad7f7f4072"
  end

  def install
    bin.install "tmux"
    man1.install "tmux.1"
    pkgshare.install "licenses"
  end

  test do
    assert_match "tmux ", shell_output("#{bin}/tmux -V")
  end
end
