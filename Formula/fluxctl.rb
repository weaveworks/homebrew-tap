class Fluxctl < Formula
  desc "fluxctl talks to Weave Flux and helps you deploy your code"
  homepage "https://github.com/weaveworks/flux"
  url "https://github.com/weaveworks/flux/releases/download/1.5.0/fluxctl_darwin_amd64"
  version "1.5.0"
  sha256 "c93774f6111b1edb4e00e32749618ae5fdf07daa2370d0e54f2701121c540c9d"

  bottle :unneeded
  depends_on "kubernetes-cli"

  def install
    libexec.install Dir["*"].shift => "fluxctl"
    bin.install_symlink libexec/"fluxctl"
  end
end
