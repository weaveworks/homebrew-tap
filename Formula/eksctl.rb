class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.19/eksctl_Darwin_amd64.tar.gz"
  version "0.1.19"
  sha256 "12deff82553fe44970bc69b155b9e2a1c043094ae2640060bfb4043fd993b265"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
