# typed: false
# frozen_string_literal: true

class Oxidepm < Formula
  desc "Fast, modern process manager for Node.js and Rust applications"
  homepage "https://github.com/oxidekit/oxidepm"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-apple-darwin.tar.gz"
      sha256 "6440a97ad15d11212e08f676877095837e443bf1ad2c2e0452dd3725e29e86d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "384e48b4b7656e68a38e2eaedd74abe790b0bcdb5dcfff84cbaf4046e9637039"
    end

    on_intel do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac5a4b20e964c2d177201a687124d2a427e214cbef2f3f359e1e7cd4e9bff21f"
    end
  end

  def install
    bin.install "oxidepm"
    bin.install "oxidepmd"
  end

  test do
    system "#{bin}/oxidepm", "--version"
  end
end
