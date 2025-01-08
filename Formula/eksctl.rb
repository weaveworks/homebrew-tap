# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.200.0"

  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.200.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "d40ae42afe8688f8b6eac5fef4659a495963b58bc2abb15b91b42de76e556ee9"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.200.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "a5e5b363f09da81f7de5c104ca326fbe4ed14a210374ace392784f9dff030cf7"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.200.0/eksctl_Linux_arm64.tar.gz"
      sha256 "a498c3caf5d62478f4a6b719fa002e8553e2883e3907ff36e2dfa40b14a7d103"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.200.0/eksctl_Linux_armv6.tar.gz"
      sha256 "d451d8932864f5d1ced41fea9e8c56ceb332b9feb4b939978b4b5501cea12398"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.200.0/eksctl_Linux_amd64.tar.gz"
      sha256 "7b64011a19db14ed7b383b7a76ad5927f503b412f9e878ffa52927b49d12614b"

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
