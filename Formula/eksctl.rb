class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.30/eksctl_Darwin_amd64.tar.gz"
  version "0.1.30"
  sha256 "a51204f3a8131d49cd17b58118bb4d7f988780c7db8fd0d29a0b7dc321962739"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
