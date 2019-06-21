class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.38/eksctl_Darwin_amd64.tar.gz"
  version "0.1.38"
  sha256 "f2b77f00f0d033f972dda1eaf9ea05ed1dffdd9f7c3c0e34a99dea770e3a188d"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
