# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitopsEe < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.10.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.2/gitops-darwin-x86_64.tar.gz"
      sha256 "f88a6bcb20942db7b9112905d19c872aee30efa624eef63ebab3d73363e7c594"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.2/gitops-darwin-arm64.tar.gz"
      sha256 "c1e529ff95a48a06573b51341032a05f05804677da261eba844a71526440fb67"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.2/gitops-linux-arm64.tar.gz"
      sha256 "16789bfab6810161381e88351310c1dc95a3e7243965f240a8c4967390b9858d"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.10.2/gitops-linux-x86_64.tar.gz"
      sha256 "a7eb8ead20b92874cf362a06148f2b58eb067fe6196222313bd26b5906108720"

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
