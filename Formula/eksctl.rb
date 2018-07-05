class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-alpha.22/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-alpha.22"
  sha256 "d713252a1493b5d3f2bef99eadac192e6130f37c2b2b23b8578dd4d2124ab1f4"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
