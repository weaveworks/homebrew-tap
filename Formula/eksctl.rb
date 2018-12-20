class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.13/eksctl_Darwin_amd64.tar.gz"
  version "0.1.13"
  sha256 "c365e9591002aa1d0725ca7291bc1e870001e94b233cef0a820956280aff01fa"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
