class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.35/eksctl_Darwin_amd64.tar.gz"
  version "0.1.35"
  sha256 "3707708957d1ad2f8e434beb298a2f55f3e204d1d282c8b588b5b608f2293fad"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
