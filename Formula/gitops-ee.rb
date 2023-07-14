# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitopsEe < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.28.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.28.0-rc.1/gitops-Darwin-arm64.tar.gz"
      sha256 "08481dd0246fa4796283f53b2644ab5250cd802542945e6b7948343077343cd3"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.28.0-rc.1/gitops-Darwin-x86_64.tar.gz"
      sha256 "f62e3e491ba58db75fa246a2df1cc89b71550ee4e96acbd11c114a2b935390ce"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.28.0-rc.1/gitops-Linux-arm64.tar.gz"
      sha256 "216abdeb64d089cdcb8b80477c6911a8c520c556097479886816caffb96177b0"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.28.0-rc.1/gitops-Linux-x86_64.tar.gz"
      sha256 "e245cb8fd7ec6a743b21e26908cc7acaaf18641ccb3cda5573c359dba84fcc61"

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
