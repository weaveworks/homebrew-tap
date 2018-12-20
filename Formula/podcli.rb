class Podcli < Formula
  desc "podinfo command line utilities"
  homepage "https://github.com/stefanprodan/k8s-podinfo"
  version "1.4.2"
  url "https://github.com/stefanprodan/k8s-podinfo/releases/download/v#{version}/podcli_#{version}_darwin_amd64.tar.gz"
  sha256 "598cebe27fcee1fa8a16b76a09d1df5a029c29a406e2cd0a9794dab4ce7bab15"
  
  def install
    bin.install "podcli"
  end
end
