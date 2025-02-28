# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.205.0"

  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.205.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "b330de18ba8e3b023479877235f41fc16351672caa1f82e2cafe270ed5e13c2d"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.205.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "79adcaa12cd5744d48e1e11ad451fbf8ca1d3900016bc24a77b7231f35e434b0"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.205.0/eksctl_Linux_amd64.tar.gz"
      sha256 "52f52276276d421f03790fbdc1b02e783c369f4863fc6dc83cf116f2f89ca5c4"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.205.0/eksctl_Linux_armv6.tar.gz"
      sha256 "b4cf7395b386845db41baf09663af7392b7b29f882e32ca3bf6a26f06ef39e2c"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.205.0/eksctl_Linux_arm64.tar.gz"
      sha256 "182f1104fdf886d613eada1aee120bf7627d77d9886f30c3f78c28a5a3bf8c08"

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
