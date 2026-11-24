class Tmux < Formula
  desc "Tmux terminal multiplexer with the io256 PTY reader"
  homepage "https://github.com/ZHDI-1/tmux"
  version "3.9-io256.3"
  license "ISC"
  depends_on macos: :sequoia

  on_arm do
    url "https://github.com/ZHDI-1/tmux/releases/download/v3.9-io256.3/tmux-io256-v3.9-io256.3-macos-arm64.tar.gz"
    sha256 "11d1068192985bbf8900ee94798e7f8ade8e448592dcba7435c7e9149b37249b"
  end

  on_intel do
    url "https://github.com/ZHDI-1/tmux/releases/download/v3.9-io256.3/tmux-io256-v3.9-io256.3-macos-x86_64.tar.gz"
    sha256 "10061616512a1f4239c6ccb900a51e6e187afc2d5215f73cc5d582e9ab50a8c3"
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
