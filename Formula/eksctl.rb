class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.20-rc.2/eksctl_Darwin_amd64.tar.gz"
  version "0.1.20-rc.2"
  sha256 "4d4ff38e189dd1d5e53211ffdec9677d2e9e8c80f6b6e74bae3ac3d7c09cb752"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
