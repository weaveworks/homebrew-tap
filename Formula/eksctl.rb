class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.36/eksctl_Darwin_amd64.tar.gz"
  version "0.1.36"
  sha256 "66cf6452d3f0e23a61730267329bd30d2a8775bae635c0be5699f7aec18c7cf0"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
