class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.9/eksctl_Darwin_amd64.tar.gz"
  version "0.1.9"
  sha256 "3c7da483e6cdd251a73a4a49d12c1e2dd792416da55267288df394a5c693612e"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
