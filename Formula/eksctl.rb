class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.29/eksctl_Darwin_amd64.tar.gz"
  version "0.1.29"
  sha256 "6ea253e76ee1b8e863c421204048740f3a8dbf7d047aa536f51e6af1f2cf7669"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
