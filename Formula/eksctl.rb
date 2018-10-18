class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.7/eksctl_Darwin_amd64.tar.gz"
  version "0.1.7"
  sha256 "80d803054ccdfebb45a0684d7a13426bc97f251b77724502de4eed1e5ea795ac"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
