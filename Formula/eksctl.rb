class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-beta.4/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-beta.4"
  sha256 "c8f2804e085ea95c5cd8a264070b6ff4e04635d8f8eacb8986de9a09754f8cb2"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
