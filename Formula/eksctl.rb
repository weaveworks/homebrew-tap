class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.32/eksctl_Darwin_amd64.tar.gz"
  version "0.1.32"
  sha256 "8bd3e353bbf593789ee674410a6eb7fd0593cca6bdb657c1707bc360eea075bd"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
