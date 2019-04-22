class EksctlAwsIamAuthenticator < Formula
  desc "A tool to use AWS IAM credentials to authenticate to a Kubernetes cluster"
  homepage "https://github.com/kubernetes-sigs/aws-iam-authenticator"
  version "0.4.0"
  url "https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v#{version}/aws-iam-authenticator_#{version}_darwin_amd64"
  sha256 "b049e08b46d36d6d5087709e5956d6be8f70fc221738d3dd11488e87ce17387f"

  def install
    bin.install "aws-iam-authenticator_#{version}_darwin_amd64"
    mv bin/"aws-iam-authenticator_#{version}_darwin_amd64", bin/"aws-iam-authenticator"
  end
end
