class Fluxctl < Formula
  desc "fluxctl talks to Weave Flux and helps you deploy your code"
  homepage "https://github.com/weaveworks/flux"
  version "1.6.0"
  url "https://github.com/weaveworks/flux/releases/download/#{version}/fluxctl_darwin_amd64"
  sha256 "9de9e9252690a79858b0001bf3cb86a19cd274e1c66b10ecaa560e5d1cd7d7a4"

  def install
    bin.install "fluxctl_darwin_amd64"
    mv bin/"fluxctl_darwin_amd64", bin/"fluxctl"
  end
end
