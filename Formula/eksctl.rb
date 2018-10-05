class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.5/eksctl_Darwin_amd64.tar.gz"
  version "0.1.5"
  sha256 "631b6e7a493bc604f7f7e01c465e7e42811cb66c1a5665dcb815e1b22a0470f9"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
