class EksctlAwsIamAuthenticator < Formula
  desc "A tool to use AWS IAM credentials to authenticate to a Kubernetes cluster"
  homepage "https://github.com/kubernetes-sigs/aws-iam-authenticator"
  version "0.3.0"
  url "https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/download/v#{version}/heptio-authenticator-aws_#{version}_darwin_amd64"
  sha256 "9585d9af8d2f3b46b31649fb549978f4aedf2d62113fd42b57f9903ad71811c2"
  
  def install
    bin.install "heptio-authenticator-aws_#{version}_darwin_amd64"
    mv bin/"heptio-authenticator-aws_#{version}_darwin_amd64", bin/"heptio-authenticator-aws"
  end
end
