class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.0/eksctl_Darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "7003a0c588ec3af065fac4ae7f32bb5ba07285fe9aa8979046f9940c915065dd"
  
  depends_on "kubernetes-cli"

  def install
    bin.install "eksctl"
  end
end
