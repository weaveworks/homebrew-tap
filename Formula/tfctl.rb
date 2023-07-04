# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfctl < Formula
  desc ""
  homepage "https://weaveworks.github.io/tf-controller"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.15.0/tfctl_Darwin_arm64.tar.gz"
      sha256 "8f0da9fa090c056321cd412013133057d17a18bc4365b99d0502f99ef19a243c"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.15.0/tfctl_Darwin_amd64.tar.gz"
      sha256 "f26de454df3de4e9316692af5099fce6c17d8a5148ff312e1024c58722692c49"

      def install
        bin.install "tfctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.15.0/tfctl_Linux_amd64.tar.gz"
      sha256 "edd562394d17388c308f79634b7ee1ddd7e5fd30acd4023647e3d01e6634cbc3"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.15.0/tfctl_Linux_arm64.tar.gz"
      sha256 "a6f4b2c93520c90649337d46cd7209099118a44d3b0224b0d557cb45b1cb03fb"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.15.0/tfctl_Linux_armv6.tar.gz"
      sha256 "86da3f6b89fbde2067d7c3876606e48a0b485ee1d317645853d7c1e9161cf76d"

      def install
        bin.install "tfctl"
      end
    end
  end
end
