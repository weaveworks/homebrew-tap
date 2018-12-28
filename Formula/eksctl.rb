class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.16/eksctl_Darwin_amd64.tar.gz"
  version "0.1.16"
  sha256 "0f5858bf8cd66b4f651a69b647403b1aad58999dedeb62098bedc9ca3d9f103a"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
