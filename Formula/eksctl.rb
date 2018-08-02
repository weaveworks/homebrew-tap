class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0-beta.5/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0-beta.5"
  sha256 "70047060f84f76fdc4769615b7e3133936d12e0645de5066b4bd865e3f816edb"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
