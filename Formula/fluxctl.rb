class Fluxctl < Formula
  desc "fluxctl talks to Weave Flux and helps you deploy your code"
  homepage "https://github.com/weaveworks/flux"
  version "1.7.0"
  url "https://github.com/weaveworks/flux/releases/download/#{version}/fluxctl_darwin_amd64"
  sha256 "1d2971c67a12fd24852ed541506283fe405f5569a43941febe4b9de23e2294b7"

  def install
    bin.install "fluxctl_darwin_amd64"
    mv bin/"fluxctl_darwin_amd64", bin/"fluxctl"
  end
end
