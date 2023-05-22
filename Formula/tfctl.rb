# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfctl < Formula
  desc ""
  homepage "https://weaveworks.github.io/tf-controller"
  version "0.14.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.14.2/tfctl_Darwin_arm64.tar.gz"
      sha256 "513020c423ab36865d55643c0646d6ff7e3f70d04c38564d84c75ab40b535168"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.14.2/tfctl_Darwin_amd64.tar.gz"
      sha256 "a99b97560899469ac7fc32060c45efd102915ec9afb6a3753baaea6faace108d"

      def install
        bin.install "tfctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.14.2/tfctl_Linux_arm64.tar.gz"
      sha256 "a18fb53b505c0114605df9a3bf590e8a24b4e2542862dc27595cc2d80f165512"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.14.2/tfctl_Linux_amd64.tar.gz"
      sha256 "62af265b3985b1dde862a8e7899ecf77c66a212f6b9147c72c3866e20a5bdcac"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.14.2/tfctl_Linux_armv6.tar.gz"
      sha256 "7eda526ebbb2e66f9beb81329b7481a41c5538dcd5914243ec5de84d8668a3b2"

      def install
        bin.install "tfctl"
      end
    end
  end
end
