class GitSwap < Formula
  desc "git_swap is a command line utility to easily swap between git profiles"
  homepage "https://github.com/randallreedjr/git_swap"
  url "https://github.com/randallreedjr/git_swap/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "381f0009f52bb5d0a511ddb85444e2aeee91ab937780cbbacab62b8f46b4d521"
  license "MIT"

  def install
    bin.install "bin/git-swap" => "git-swap"
    prefix.install Dir["lib"]
    prefix.install "README.md"
    prefix.install "LICENSE.txt"
  end
end
