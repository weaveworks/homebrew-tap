class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/archive/0.1.0-alpha.18.tar.gz"
  head "https://github.com/weaveworks/eksctl.git"
  version "0.1.0-alpha.18"
  sha256 "a621cb15f6188fd705166e3147ea452551b44833ea0fa07e61ff76754310de34"
  
  depends_on "kubernetes-cli"
  depends_on "go" => :build

  def install
    bin.install "eksctl"
  end
end
