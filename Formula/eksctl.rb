class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.15/eksctl_Darwin_amd64.tar.gz"
  version "0.1.15"
  sha256 "f3207798469e6f26195b7adcc40e25e543a58072b1f84f987bb1986af625fd73"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
