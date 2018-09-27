class Fluxctl < Formula
  desc "fluxctl talks to Weave Flux and helps you deploy your code"
  homepage "https://github.com/weaveworks/flux"
  version "1.7.1"
  url "https://github.com/weaveworks/flux/releases/download/#{version}/fluxctl_darwin_amd64"
  sha256 "4e87986ea23f27313f0d2d42e9747ca92f7c51f262eec11ec8f5ecce9203ed04"

  def install
    bin.install "fluxctl_darwin_amd64"
    mv bin/"fluxctl_darwin_amd64", bin/"fluxctl"
  end
end
