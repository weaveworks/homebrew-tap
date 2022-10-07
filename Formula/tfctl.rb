# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfctl < Formula
  desc ""
  homepage "https://weaveworks.github.io/tf-controller"
  version "0.13.0-rc.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.13.0-rc.5/tfctl_Darwin_amd64.tar.gz"
      sha256 "0e6490e4b5edcb461fa27796ac738b26337bf3caeb7d9b289844631d896c66a5"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.13.0-rc.5/tfctl_Darwin_arm64.tar.gz"
      sha256 "e9214a14671770a9d3df119c393d1652d830aff5c2102e019ff830e6fb51a46b"

      def install
        bin.install "tfctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.13.0-rc.5/tfctl_Linux_amd64.tar.gz"
      sha256 "68f50ff23615e75564f4dcdcf52ad05b35d273f241b80d86fb3e058bd917f0e3"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.13.0-rc.5/tfctl_Linux_arm64.tar.gz"
      sha256 "45cfe4ace7acdc1c38fcfc1cc075d4f8d0a4fefc94c2c92de0d50cf4c1b6f2a0"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.13.0-rc.5/tfctl_Linux_armv6.tar.gz"
      sha256 "f519445e80b97cbd71e4b1c0714c1062646c70e713a879a897298f3c80699f86"

      def install
        bin.install "tfctl"
      end
    end
  end
end
