class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.20/eksctl_Darwin_amd64.tar.gz"
  version "0.1.20"
  sha256 "2f1b4d2c2f79023154335b628887a98a39755a3b14e64119cdfb16c29421decc"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
