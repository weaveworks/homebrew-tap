class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.11/eksctl_Darwin_amd64.tar.gz"
  version "0.1.11"
  sha256 "df92d5e9939de868410e7e18d2b6fed9f7ed6165a8d06212c592cf7ec04b214e"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
