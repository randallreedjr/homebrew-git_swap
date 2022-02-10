# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitSwap < Formula
  desc "git_swap is a command line utility to easily swap between git profiles"
  homepage "https://github.com/randallreedjr/git_swap"
  url "https://github.com/randallreedjr/git_swap/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "7eb5abe5f6891c7c113f5273f1fb621b70bed46f9c2565c87214c89764871607"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args

    bin.install Dir["bin"]
    bin.install Dir["lib"]
    bin.install "bin/git-swap"
    prefix.install "README.md"
    prefix.install "LICENSE.txt"
  end
end
