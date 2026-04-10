# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.0/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "072cc905b734727ab5e1895a60d3a981a31c9a0be233f0ec3c95903affb33600"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.0/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "26e8e07d01e11bda1b8f7bf3ef038e68357afa1ac3c3b58341b2a228f19e88c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.0/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6df908b39d6519a8e542bf221f7d1cb6b16fef5a028f9d7a31eff17721fcbc72"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.3.0/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38759aa3e37f2aec8e18110b6df0c348d6e5a84177cca062f36df7e064504a52"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
