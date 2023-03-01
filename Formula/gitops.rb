# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitops < Formula
  desc "GitOps support for Kubernetes"
  homepage "https://docs.gitops.weave.works/docs/getting-started"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.18.0/gitops-darwin-x86_64.tar.gz"
      sha256 "8a62306f85c98e7a994466fb56da0c26760a90ebbdde7d3fc27c7054f82549ac"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/gitops completion bash --no-analytics", { :err => :err })
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/gitops completion zsh --no-analytics", { :err => :err })
        (zsh_completion/"_gitops").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.18.0/gitops-darwin-arm64.tar.gz"
      sha256 "7e30b53b1a7045496cd15e642c2ad7088a1e8492fa9ad51d7e1d263e393d21ff"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/gitops completion bash --no-analytics", { :err => :err })
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/gitops completion zsh --no-analytics", { :err => :err })
        (zsh_completion/"_gitops").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.18.0/gitops-linux-arm64.tar.gz"
      sha256 "f603cd4a65ead0bf83b9102f32d61c5684d485351edab70d94bf5af3f5cf1c6e"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/gitops completion bash --no-analytics", { :err => :err })
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/gitops completion zsh --no-analytics", { :err => :err })
        (zsh_completion/"_gitops").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/weaveworks/weave-gitops/releases/download/v0.18.0/gitops-linux-x86_64.tar.gz"
      sha256 "9cdebd7c9e1c72d8c2c86514bc13d5eddd66c8c136d7f543f36d4ddb2590364b"

      def install
        bin.install "gitops"
        # Install bash completion
        output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/gitops completion bash --no-analytics", { :err => :err })
        (bash_completion/"gitops").write output

        # Install zsh completion
        output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/gitops completion zsh --no-analytics", { :err => :err })
        (zsh_completion/"_gitops").write output
      end
    end
  end
end
