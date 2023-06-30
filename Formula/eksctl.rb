# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.147.0"

  depends_on "kubernetes-cli"
  depends_on "aws-iam-authenticator"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.147.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "bfc14880a3c5c8fec0e338726fdfa52e375dce0a8bfa766a34e4c4224ec5c929"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.147.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "d3b2a204f68eaf151b8b79bb3a28857d45d5d56353b5c430a4cd34161c8fe6fe"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.147.0/eksctl_Linux_armv6.tar.gz"
      sha256 "ecce124145897d13046b061dc7e91fdf354e3430a42d4192bdc71d4f405a83cb"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.147.0/eksctl_Linux_arm64.tar.gz"
      sha256 "65a9b117d5cfce04100f75fd9188889c3dee58f1d136592720d7834028aa52b3"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.147.0/eksctl_Linux_amd64.tar.gz"
      sha256 "56e5746160381a288d5ad70846f0f0b4cd7f5d51e1dfe0880043cf120a2eb10a"

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
end
