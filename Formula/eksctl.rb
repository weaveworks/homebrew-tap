class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.31/eksctl_Darwin_amd64.tar.gz"
  version "0.1.31"
  sha256 "39755c089f3c6ead61b5e75946c685c3697d40d2eb990cd4bef49c4e69477e91"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
