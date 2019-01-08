class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.17/eksctl_Darwin_amd64.tar.gz"
  version "0.1.17"
  sha256 "fc0dcdf7b8cc62e1347da68ba99ef9b981e3561a83dc4dc81bbfa8e63a42c068"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
