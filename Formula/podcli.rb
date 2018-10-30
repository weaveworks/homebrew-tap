class Podcli < Formula
  desc "podinfo command line utilities"
  homepage "https://github.com/stefanprodan/k8s-podinfo"
  version "1.3.1"
  url "https://github.com/stefanprodan/k8s-podinfo/releases/download/v#{version}/podcli_#{version}_darwin_amd64.tar.gz"
  sha256 "c6ce58d593cf4a29e8e617a7bf8ff9777982206795adf3cbaa1216c0d75012e1"
  
  def install
    bin.install "podcli"
  end
end
