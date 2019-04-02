class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.27/eksctl_Darwin_amd64.tar.gz"
  version "0.1.27"
  sha256 "961890d83e8285f49a98e0291d90b9d3d39c2067654a324e78d78e1165cc9f07"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
