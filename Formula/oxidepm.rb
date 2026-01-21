# typed: false
# frozen_string_literal: true

class Oxidepm < Formula
  desc "Fast, modern process manager for Node.js and Rust applications"
  homepage "https://github.com/oxidekit/oxidepm"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-apple-darwin.tar.gz"
      sha256 "d88fd3edbea2b9529fc996f4b941ea5dd53959233392fc84ac500b774266c05e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ffea93b0b5552128ff801677fb59690635b3ed70082245d0eeeab465fbade9d7"
    end

    on_intel do
      url "https://github.com/oxidekit/oxidepm/releases/download/v#{version}/oxidepm-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "21b86a45e1f37385f66b6cf0fa161253f8d93fe6b69194ddf06ea8fe8c778949"
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
