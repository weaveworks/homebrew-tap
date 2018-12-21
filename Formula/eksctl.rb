class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.14/eksctl_Darwin_amd64.tar.gz"
  version "0.1.14"
  sha256 "7ad3a5393b2afe919031e055734a89c380b9149183fd1d5bf78c83e36ba48564"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
