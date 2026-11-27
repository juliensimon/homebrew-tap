# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.5/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "584ba252579ead7e5e5c526a1e2bf37a7324e5c5220a7c9d0a2fc1320862c557"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.5/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "89b5070ceb7290a401685ec35db778b1c3722473f084088acb0102c1bd056cad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.5/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "848bbbe5a720bf3ebf2b406cd791fea92ee152eb01399bc19a27f47fb897136d"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.5/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4cc5cf243a0fcf938dfb10076953b5f4b444fd55c12c7e2e1a6d7f8ae5053e22"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
