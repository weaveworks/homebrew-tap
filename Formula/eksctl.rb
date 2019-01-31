class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.20-rc.1/eksctl_Darwin_amd64.tar.gz"
  version "0.1.20-rc.1"
  sha256 "000d4b4ebb422e3ce1592f03e2627b1e9eee60ca17ba54de9698d5f2190cd3b6"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
