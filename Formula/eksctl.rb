class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-beta.1/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-beta.1"
  sha256 "92e41d1c4018a0ca6ab97e294fd289c6d11b00cd9a6262194b66dbf5cc82f472"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
