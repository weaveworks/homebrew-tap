# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.99.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.99.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "ec64de61dc3c12d81daa0ed5d295d46e4d27d44ec5475d491040e064669f95ae"

      def install
        bin.install "eksctl"

        # Install bash completion
        output = Utils.popen_read("#{bin}/eksctl completion bash")
        (bash_completion/"eksctl").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/eksctl completion zsh")
        (zsh_completion/"_eksctl").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.99.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "9a2f9472d3d5d823cc647bbdfdb51a7bd595fe4559788045ac4c26d2cd870a7d"

      def install
        bin.install "eksctl"

        # Install bash completion
        output = Utils.popen_read("#{bin}/eksctl completion bash")
        (bash_completion/"eksctl").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/eksctl completion zsh")
        (zsh_completion/"_eksctl").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.99.0/eksctl_Linux_armv6.tar.gz"
      sha256 "1e78bc8f69f26b3cbba415168a8a810015a96071261332104e4a65de22b54b75"

      def install
        bin.install "eksctl"

        # Install bash completion
        output = Utils.popen_read("#{bin}/eksctl completion bash")
        (bash_completion/"eksctl").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/eksctl completion zsh")
        (zsh_completion/"_eksctl").write output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.99.0/eksctl_Linux_arm64.tar.gz"
      sha256 "d59de0521e798c1dee147eb96a96e80da5c8ac64bb6fa6cec5a37c8b078a79a2"

      def install
        bin.install "eksctl"

        # Install bash completion
        output = Utils.popen_read("#{bin}/eksctl completion bash")
        (bash_completion/"eksctl").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/eksctl completion zsh")
        (zsh_completion/"_eksctl").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.99.0/eksctl_Linux_amd64.tar.gz"
      sha256 "be534b020bc4199b214c6adb88f3cf3666e3b6a3c8d65542ae6f3385aee01be2"

      def install
        bin.install "eksctl"

        # Install bash completion
        output = Utils.popen_read("#{bin}/eksctl completion bash")
        (bash_completion/"eksctl").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/eksctl completion zsh")
        (zsh_completion/"_eksctl").write output
      end
    end
  end

  head "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_Darwin_amd64.tar.gz"

  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"
end
