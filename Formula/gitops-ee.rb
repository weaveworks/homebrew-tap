# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitopsEe < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.10.1-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.1-rc.1/gitops-darwin-x86_64.tar.gz"
      sha256 "0177d20ddf63821f6d87dae6cabaa63829dad27d12a98b3443a2463e02db0f40"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.1-rc.1/gitops-darwin-arm64.tar.gz"
      sha256 "2bbe35d0e70b859f4397dfdf3f02bcbac8ba1289deff0faf64c6437ff49ebf51"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.1-rc.1/gitops-linux-arm64.tar.gz"
      sha256 "546b4b2c0f870c2bc05aa3c247ba451b9e4dd86866577c3c3f4610b5f1d43cbb"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.1-rc.1/gitops-linux-x86_64.tar.gz"
      sha256 "ae8766353a52897a243d220d7334e48d750686b7b7e1882b67610d830c6d79b0"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.popen_read("#{bin}/gitops completion bash")
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.popen_read("#{bin}/gitops completion zsh")
        (zsh_completion/"_gitops").write output
      end
    end
  end
end
