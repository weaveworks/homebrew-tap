class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.6/eksctl_Darwin_amd64.tar.gz"
  version "0.1.6"
  sha256 "ab95e48244454d3ed2e642daefd67f22c3909cd99533ca2553452f5927833924"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
