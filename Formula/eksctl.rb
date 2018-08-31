class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.1/eksctl_Darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "0d14788bae8e92eff589d69316ae5ab31a8c23ead27482eb11dcb80c87e0a3fb"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
