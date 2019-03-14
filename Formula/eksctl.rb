class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.24/eksctl_Darwin_amd64.tar.gz"
  version "0.1.24"
  sha256 "4ea4bd266df76b89a61402538ad6568264d05c1b59a1134d93e13d2dddd4c060"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
