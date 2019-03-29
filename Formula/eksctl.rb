class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.26/eksctl_Darwin_amd64.tar.gz"
  version "0.1.26"
  sha256 "f8768575c61b6ffa65c3fb769021b82ee5910630138a298721bf92bc36529562"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
