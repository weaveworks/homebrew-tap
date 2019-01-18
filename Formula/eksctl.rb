class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.19/eksctl_Darwin_amd64.tar.gz"
  version "0.1.19"
  sha256 "dd3757b4f30e031d45fb2d292b1b18497ad9868c9873d6fd98e047b859cae735"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
