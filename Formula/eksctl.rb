class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.21/eksctl_Darwin_amd64.tar.gz"
  version "0.1.21"
  sha256 "4980e11a189cb58fb75c437f4be54e8b925c4edd588ef6f0f4868b71fc194862"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
