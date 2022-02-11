class GitSwap < Formula
  desc "git_swap is a command line utility to easily swap between git profiles"
  homepage "https://github.com/randallreedjr/git_swap"
  url "https://github.com/randallreedjr/git_swap/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "7eb5abe5f6891c7c113f5273f1fb621b70bed46f9c2565c87214c89764871607"
  license "MIT"

  def install
    bin.install "bin/git-swap" => "git-swap"
    prefix.install Dir["lib"]
    prefix.install "README.md"
    prefix.install "LICENSE.txt"
  end
end
