# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.2.0/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "ef7c94bd1f324b077ad3f8e1e260d93a8ae93581c6f0db22d5ef75b0a1a695b7"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.2.0/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "b5d4ce6fad0c1f31ec6c5f1faddc82cbfc91a4899921a02d3a00415c508fc71a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.2.0/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "593fb9f3b397f45864f88c944fc72269cd14741cdb9e4336e7eb0a0253781324"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.2.0/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad9cd5d07511defaf395e4eb4fc3a0728fa8d0ab0b22937bd5d353251b883403"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
