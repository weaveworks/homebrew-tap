class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-beta.3/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-beta.3"
  sha256 "6e170d43d7c58023584226badb83fb3b5da3da2defe3450c6a4e74c4d6026b89"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
