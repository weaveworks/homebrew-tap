class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.25/eksctl_Darwin_amd64.tar.gz"
  version "0.1.25"
  sha256 "742018b16f8373148982aab2e9290a27d1f2f77a9f73ef922b38ab185f6d174b"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
