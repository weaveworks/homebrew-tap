# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.193.0"

  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.193.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "df54a93ae41a17fd69ae6f681d7a31caaac505587d01d897f8e7e4777a0ab73c"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.193.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "93fa0d83ad5e6bee4617f4185d7bec23b2d476461f4c8199afb3a0dfb2460029"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.193.0/eksctl_Linux_amd64.tar.gz"
      sha256 "5d53a96bf697b0b431647a404562fdb3c597754aea054baacf164771df2b3e02"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.193.0/eksctl_Linux_arm64.tar.gz"
      sha256 "378dc511e4323f85efd6663494ac588c4f73a481fecb47bd57fd08d2badff6a4"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.193.0/eksctl_Linux_armv6.tar.gz"
      sha256 "08bc640126adc0cd61d2a18c916ab41a7ae79a81ff93779e1ea0920e97350ade"

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

  head "https://github.com/eksctl-io/eksctl/releases/download/latest_release/eksctl_Darwin_amd64.tar.gz"
end
