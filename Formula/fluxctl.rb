class Fluxctl < Formula
  desc "fluxctl talks to Weave Flux and helps you deploy your code"
  homepage "https://github.com/weaveworks/flux"
  version "1.5.0"
  url "https://github.com/weaveworks/flux/releases/download/#{version}/fluxctl_darwin_amd64"
  sha256 "c93774f6111b1edb4e00e32749618ae5fdf07daa2370d0e54f2701121c540c9d"

  depends_on "kubernetes-cli"

  def install
    bin.install "fluxctl_darwin_amd64"
    mv bin/"fluxctl_darwin_amd64", bin/"fluxctl"
  end
end
