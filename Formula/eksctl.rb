class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.20-rc.3/eksctl_Darwin_amd64.tar.gz"
  version "0.1.20-rc.3"
  sha256 "9d8d395652ba2336d54b354d9392d8a770c7005740a00635f80402bd8f236075"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
