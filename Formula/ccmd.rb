# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.1/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "8db9d5702f300f97af2b459bc0e7b6436f87e863cb9d038aa030ad67c7960035"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.1/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "0f14491e0ff43074b85a16d91e68cab8a5c515a2218b1d58db8e6f5b6f3ef110"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.1/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa52720b58a7c99eeb75ec382d0b599fb0c255ad9fdda8baf370ea1863ee41e8"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.1/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72144176c2ab82c04e7d8c9bad10dede3507b4fe8a96fb02e39b5e1a62a8871b"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
