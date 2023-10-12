# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitopsEe < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.34.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.34.0/gitops-Darwin-x86_64.tar.gz"
      sha256 "6270ecd3b5d6cec0ec3375a68a350ff8e4fc556d61ce9b45b9ed23d1032df549"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.34.0/gitops-Darwin-arm64.tar.gz"
      sha256 "5012336772b3db10ab158456504f2943f8b1c3874e0628aade17c403646ac034"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.34.0/gitops-Linux-arm64.tar.gz"
      sha256 "6d628b7290676bf85e7851aab194b3f49bd20aa22f9facae88df380cc549b254"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.34.0/gitops-Linux-x86_64.tar.gz"
      sha256 "8000139d367c0a122d31ddb1cbe946d47e69179d8c727a379ffd7921ce3da6cd"

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
