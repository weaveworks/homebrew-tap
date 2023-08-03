# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfctl < Formula
  desc ""
  homepage "https://weaveworks.github.io/tf-controller"
  version "0.16.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.16.0-rc.2/tfctl_Darwin_arm64.tar.gz"
      sha256 "a12e8d9c14cba1bb49a75479ba56349ceb1df761875c27a611df5b40d8989c2f"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.16.0-rc.2/tfctl_Darwin_amd64.tar.gz"
      sha256 "b17f9f59ac8eb7ce8f98c56a72b3939c8522855f8ab6ceae1ef20e23d2180e85"

      def install
        bin.install "tfctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.16.0-rc.2/tfctl_Linux_arm64.tar.gz"
      sha256 "194c7b9166adbbeb85bb018653a64d644d6bb86eff7db1f06d994b87dfbb651b"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.16.0-rc.2/tfctl_Linux_amd64.tar.gz"
      sha256 "189c0d9a6703623a2309a5d89a5cda726c84d9184e4625b20a9c8211f2b574d8"

      def install
        bin.install "tfctl"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/tf-controller/releases/download/v0.16.0-rc.2/tfctl_Linux_armv6.tar.gz"
      sha256 "87555a82f28327785599ba14fa2a5192a194aa645730706ab5e4fa7ccd61ef34"

      def install
        bin.install "tfctl"
      end
    end
  end
end
