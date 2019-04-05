class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.28/eksctl_Darwin_amd64.tar.gz"
  version "0.1.28"
  sha256 "52ed08261f733be6b5b6e3810fa3c3768f262f74bebb14cfefb2979291a5170c"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
