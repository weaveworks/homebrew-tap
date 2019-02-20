class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.22/eksctl_Darwin_amd64.tar.gz"
  version "0.1.22"
  sha256 "a04e2ad665d9c89b677ea2098f8e00ae31f794f36227a25fa68cfb2db34b3803"
  
  depends_on "kubernetes-cli"
  depends_on "eksctl-aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
