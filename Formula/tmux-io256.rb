class TmuxIo256 < Formula
  desc "Tmux terminal multiplexer with the io256 PTY reader"
  homepage "https://github.com/ZHDI-1/tmux"
  version "3.9-io256.1"
  license "ISC"
  depends_on macos: :sequoia

  on_arm do
    url "https://github.com/ZHDI-1/tmux/releases/download/v3.9-io256.1/tmux-io256-v3.9-io256.1-macos-arm64.tar.gz"
    sha256 "61b35d6abe86e0322b4a4df77cabc8bed8a0654c3f8fbce54e53ac003518f7de"
  end

  on_intel do
    url "https://github.com/ZHDI-1/tmux/releases/download/v3.9-io256.1/tmux-io256-v3.9-io256.1-macos-x86_64.tar.gz"
    sha256 "ecc39ba34997e901bc2102fd57dad3bf73e5d9f4769007cb333f8421f5ffd414"
  end

  def install
    bin.install "tmux" => "tmux-io256"
    man1.install "tmux.1" => "tmux-io256.1"
    pkgshare.install "licenses"
  end

  test do
    assert_match "tmux", shell_output("#{bin}/tmux-io256 -V")
  end
end
