class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.18/eksctl_Darwin_amd64.tar.gz"
  version "0.1.18"
  sha256 "038bb25408874903783a3d8e5d3a57b8959df0d183237fd00b5df960875f2354"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
