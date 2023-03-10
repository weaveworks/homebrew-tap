# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.133.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.133.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "a0f2b85adf03ab14e3df3c7ca7d1efd2bba70d8c1a909548674db52a5882af9b"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.133.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "a03ac72f1af09ad115fae7727ccdab58fe1e4b2811daba455697abc8fe7a9581"

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
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.133.0/eksctl_Linux_amd64.tar.gz"
      sha256 "8ef7c21104c326f77e41c8123b14157724b6065b72e3eddc85abf89705764e5b"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.133.0/eksctl_Linux_armv6.tar.gz"
      sha256 "6a89062f507d702ef1fc1f1fe03f27b72200e42104deca1d0ea14080ef59f319"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.133.0/eksctl_Linux_arm64.tar.gz"
      sha256 "3a6f4d55156fa60312f5e6d0106872ce3d137087537c4ccf8d3a6e8675f80c2f"

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
