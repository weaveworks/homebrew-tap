class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.10/eksctl_Darwin_amd64.tar.gz"
  version "0.1.10"
  sha256 "f53cfffde11f1b12a22b2b1ac1a712d169e2fc514d367d58a0f36efd2bff111c"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
