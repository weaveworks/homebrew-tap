class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-alpha.21/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-alpha.21"
  sha256 "b9b78983ecb76b658e78852b930af3973237027a4bbc9e5842d6bd6023f128bf"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
