class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.30/eksctl_Darwin_amd64.tar.gz"
  version "0.1.30"
  sha256 "8ec47280f9d522c510429dcc5b665c2ad2eaeb0578a96f8ba4a504f1e76bd887"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
