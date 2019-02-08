class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.20-rc.4/eksctl_Darwin_amd64.tar.gz"
  version "0.1.20-rc.4"
  sha256 "9419252660e782560810748e8ae0d40a804df064fc0ce45947f15b2857740dd3"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
