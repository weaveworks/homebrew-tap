# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.84.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/0.84.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "61882463ce295ba309626720cf2f857d592fdf6df676cc7bf126b2cffbd228ec"

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
      url "https://github.com/weaveworks/eksctl/releases/download/0.84.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "32c6f7ce6c920136a0c8417679f52c036e51b3126febea5faabaf09044e91c26"

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
      url "https://github.com/weaveworks/eksctl/releases/download/0.84.0/eksctl_Linux_amd64.tar.gz"
      sha256 "d7e095096f8aca51f20c03b713a5cf4a8c784d392a87f95bf7f28bc6fd119e83"

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
      url "https://github.com/weaveworks/eksctl/releases/download/0.84.0/eksctl_Linux_armv6.tar.gz"
      sha256 "89d6652801cc55314fd93e664d61efb6b65598d8ccaebf87c81b7d3e96cdd318"

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
      url "https://github.com/weaveworks/eksctl/releases/download/0.84.0/eksctl_Linux_arm64.tar.gz"
      sha256 "1af29fa41f33ea1d0dd990ba40e2e80ca59c782e6e22e1218b4689976b96d43c"

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
