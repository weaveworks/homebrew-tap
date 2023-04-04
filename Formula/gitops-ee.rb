# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitopsEe < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.20.1-rc.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.20.1-rc.1/gitops-darwin-x86_64.tar.gz"
      sha256 "965c9ceac8df38160b506418b5406043d2fd95fc74d8945e1cea15cd0badbaee"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.20.1-rc.1/gitops-darwin-arm64.tar.gz"
      sha256 "f14d9428d3b81f2c861c513de187d93add617e2e1042f9c890d32c715039804a"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.20.1-rc.1/gitops-linux-arm64.tar.gz"
      sha256 "7eae62b83c0f3ac556337a169f7ef52ee94bc5198c71eadc4ef1c0ea73c76870"

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
      url "https://artifacts.wge.dev.weave.works/releases/bin/0.20.1-rc.1/gitops-linux-x86_64.tar.gz"
      sha256 "121a8f7450c3f4ecf7009963d66cabf7194ff71e4c58cc95536f32a3a739d9d1"

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
