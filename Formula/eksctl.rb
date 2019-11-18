# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.10.0"

  if OS.mac?
    url "https://github.com/weaveworks/eksctl/releases/download/0.10.0/eksctl_Darwin_amd64.tar.gz"
    sha256 "3780c5d4b17f9e44ea703acd24a3be37eeffd6fce5b8277fcdd9489126402f10"
  elsif OS.linux?
    url "https://github.com/weaveworks/eksctl/releases/download/0.10.0/eksctl_Linux_amd64.tar.gz"
    sha256 "f48e56ebbfe4648142c983b61df1bf577807e5de61126a1ee5e264b3eda8a71a"
  end
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
