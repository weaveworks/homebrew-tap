class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-beta.2/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-beta.2"
  sha256 "aef947899c5bb53242c7cfedf7f1ddc109085bc3954a63042a748ad68fbef0c4"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
