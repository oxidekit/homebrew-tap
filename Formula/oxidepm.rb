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
      sha256 "22c6e9d03478e5b332071c151ba55ed28a2274bd58f6308e281cbcddce34c2a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8538b3e24fb90635f7f77352323ee5db205fe270a78c98d05c661066fdf6b2f9"
    end

    on_intel do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "117a1318375573b4e7033cb6e6898444eab097ecf79a217fdc3ae0a03100c916"
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
