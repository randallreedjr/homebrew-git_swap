class GitSwap < Formula
  desc "git_swap is a command line utility to easily swap between git profiles"
  homepage "https://github.com/randallreedjr/git_swap"
  url "https://github.com/randallreedjr/git_swap/archive/refs/tags/v1.1.5.tar.gz"
  sha256 "9c61a817ee5475210fcfd7bc821f7b78a8fd59260fbf6eccfd598b76d3a3b385"
  license "MIT"

  def install
    bin.install "bin/git-swap" => "git-swap"
    prefix.install Dir["lib"]
    prefix.install "README.md"
    prefix.install "LICENSE.txt"
  end
end
