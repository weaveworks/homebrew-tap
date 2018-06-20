class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-alpha.19/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-alpha.19"
  sha256 "04a5286b05e72e6eda3e4bf4b201e14418c9455cfe64a22ee2dfbea36f7e0176"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
