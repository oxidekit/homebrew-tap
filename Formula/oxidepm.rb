# typed: false
# frozen_string_literal: true

class Oxidepm < Formula
  desc "Fast, modern process manager for Node.js and Rust applications"
  homepage "https://github.com/oxidekit/oxidepm"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_DARWIN"

      def install
        bin.install "oxidepm"
        bin.install "oxidepmd"
      end
    end

    on_intel do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_DARWIN"

      def install
        bin.install "oxidepm"
        bin.install "oxidepmd"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_LINUX"

      def install
        bin.install "oxidepm"
        bin.install "oxidepmd"
      end
    end

    on_intel do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_X86_64_LINUX"

      def install
        bin.install "oxidepm"
        bin.install "oxidepmd"
      end
    end
  end

  test do
    system "#{bin}/oxidepm", "--version"
  end
end
