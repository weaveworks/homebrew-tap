# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.151.0"

  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.151.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "c3b4bebca6d6b8085e54ded1bfbc16dad46330c00d6fadc4d18933d64c509eba"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.151.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "84d9dcd92b58f723b1c2377118e061379ee6ae2cb4e4145a7225498460b7082a"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.151.0/eksctl_Linux_arm64.tar.gz"
      sha256 "711f21baab87aad994c143c563831d6503cbe3cc8433822949e8f2e10d65f140"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.151.0/eksctl_Linux_armv6.tar.gz"
      sha256 "f8a0bb7cd72e3f82fed3a76f8b7de3b9529f1b4e46a0774bcf5a7edaed5a3d59"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.151.0/eksctl_Linux_amd64.tar.gz"
      sha256 "77350d8e01ec35f612b7f5add10ed16dd1ff004528df59f7f9d9c1f97ae7977d"

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
