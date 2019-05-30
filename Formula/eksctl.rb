class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.33/eksctl_Darwin_amd64.tar.gz"
  version "0.1.33"
  sha256 "1dde85b4e5dca82b33bee11f4f8290a6c47d1f78e182ec3879e154c0d92e4473"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
