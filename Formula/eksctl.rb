# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.127.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.127.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "0216a4a648c6cd8df0681f69a4ad20ceb3853c5839295ace1573f1f4e5ffab83"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.127.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "059b981e5692496f78ff9ad5c0083042ea1542b879de116d875b9adaeaafc272"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.127.0/eksctl_Linux_armv6.tar.gz"
      sha256 "9dc197d22232b1f810388c97907461d3e1e408fd3bf8b1546af99a83d9a5b2e0"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.127.0/eksctl_Linux_amd64.tar.gz"
      sha256 "41f20e3ddc0008aa15657eb1057a3140f569625d9a3dfedf59989874b0d2899a"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.127.0/eksctl_Linux_arm64.tar.gz"
      sha256 "f5302564f414d570ecc25f02284b7330dba319fb2c5507187d3ad8d7864e8b1a"

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
