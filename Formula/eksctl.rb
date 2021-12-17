# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.77.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/eksctl/releases/download/v0.77.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "dd39f6291420b786671e92f4e7e28c07cb3a7d7f92fefed709c23b99fe5e5104"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.77.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "7504060579da19a16b1f22e640b844768539af19b41ed649a20aadd20eb91954"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.77.0/eksctl_Linux_armv6.tar.gz"
      sha256 "0ff4cca1ad854e7cafc4ba973bc8917f21e8d7d233ce48e552a9f45230b9ce7e"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.77.0/eksctl_Linux_amd64.tar.gz"
      sha256 "127630fc72d15985822392dd13e3a5318419c443d68fcb11ce511a304e16eb74"

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
      url "https://github.com/weaveworks/eksctl/releases/download/v0.77.0/eksctl_Linux_arm64.tar.gz"
      sha256 "294c40fad85744e65d26c0b162067daa65ecbc36eb41f884df3e896f55c04843"

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
