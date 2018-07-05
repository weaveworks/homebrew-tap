class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-alpha.20/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-alpha.20"
  sha256 "80b2613dc3ec8284c5b8f754fed7f01917585e92a541f8fb756549cb11dd904f"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
