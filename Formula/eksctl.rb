class Eksctl < Formula
  desc "a CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  url "https://github.com/weaveworks/eksctl/releases/download/0.1.34/eksctl_Darwin_amd64.tar.gz"
  version "0.1.34"
  sha256 "4c935a860d8c7e3d6abe9f6205c74219b8ccd0e6a96b2216e868dd78c83cd415"
  
  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  def install
    bin.install "eksctl"
  end
end
