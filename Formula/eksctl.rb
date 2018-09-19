class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.3/eksctl_Darwin_amd64.tar.gz"
  version "0.1.3"
  sha256 "8a4e31bfd3a2ef8d46702b74d4a9fdf5feef6c3917ce20f56adce23c65ba01f2"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
