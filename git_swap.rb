class GitSwap < Formula
  desc "git_swap is a command line utility to easily swap between git profiles"
  homepage "https://github.com/randallreedjr/git_swap"
  url "https://github.com/randallreedjr/git_swap/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "8311c7d1ee222841a8305b26f540d02e6bd7ee26447be873d311c70d39532fc7"
  license "MIT"

  def install
    bin.install "bin/git-swap" => "git-swap"
    prefix.install Dir["lib"]
    prefix.install "README.md"
    prefix.install "LICENSE.txt"
  end
end
