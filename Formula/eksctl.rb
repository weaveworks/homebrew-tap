class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.12/eksctl_Darwin_amd64.tar.gz"
  version "0.1.12"
  sha256 "de37bb10aaecaaae2f0814c44bd744716b479587b573db2a28a7cf322043a5c3"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
