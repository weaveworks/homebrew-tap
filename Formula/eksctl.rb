# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eksctl < Formula
  desc "The official CLI for Amazon EKS"
  homepage "https://eksctl.io/"
  version "0.203.0"

  depends_on "aws-iam-authenticator"
  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.203.0/eksctl_Darwin_arm64.tar.gz"
      sha256 "72d14bc5184ae54e431353b57c2f0bfc410a803ebcfdd4f681bbd1b86f08d3c6"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.203.0/eksctl_Darwin_amd64.tar.gz"
      sha256 "63f8cc67717673917f7e47b0eb097f54412ac398664e10ac6613d32c87f2a87f"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.203.0/eksctl_Linux_arm64.tar.gz"
      sha256 "ab12898802c860b474dc7b410edea0898798916ec1128f0b0940b144795f17ca"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.203.0/eksctl_Linux_armv6.tar.gz"
      sha256 "174742e304f64e3491d14eaadbfc771e0d312ebcc9e2b156138f17ed1543ad76"

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
      url "https://github.com/eksctl-io/eksctl/releases/download/v0.203.0/eksctl_Linux_amd64.tar.gz"
      sha256 "4549aab315f6127a7161eb59e2ace137ae90a47278ff073c0778ea4f589d937d"

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
