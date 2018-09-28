class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.4/eksctl_Darwin_amd64.tar.gz"
  version "0.1.4"
  sha256 "7cee3f32cc4edfec593b050ebb0b6fe4d410296db779174e2000e6f7cffea2ae"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
