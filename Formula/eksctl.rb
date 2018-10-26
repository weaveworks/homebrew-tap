class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.8/eksctl_Darwin_amd64.tar.gz"
  version "0.1.8"
  sha256 "ead65b6e2a16b64bacc0b1a059a4a1a2f17a18147761bd08656f9c3c8b878d26"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
