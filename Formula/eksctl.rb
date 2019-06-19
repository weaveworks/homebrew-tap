class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.37/eksctl_Darwin_amd64.tar.gz"
  version "latest_release"
  sha256 "b457e5b6e4fdafabf0c658606036b7ad152844e4ddfb0c5d1555f8f004fb5093"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
