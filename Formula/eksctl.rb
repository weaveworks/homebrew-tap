class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.23/eksctl_Darwin_amd64.tar.gz"
  version "0.1.23"
  sha256 "b74c3eb43ba918ffdb4c01651b319de567919b6e0875759642a543db9ab56cef"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
