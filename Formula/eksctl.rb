class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.2/eksctl_Darwin_amd64.tar.gz"
  version "0.1.2"
  sha256 "20a7729273f73049c0fc892798f7fd1d34204fe5818a2befc32bc264affb45f3"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
