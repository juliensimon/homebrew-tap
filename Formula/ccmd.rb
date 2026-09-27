# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.3/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "1b29b45c4cb66770d6b3f599fb53548664f15630df7503a4a00921748144cd41"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.3/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "08e9d6897ea14697b7c144ad5cf6567c62f72b999eba52f65492d9fc0fb5d552"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.3/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2cb8bf5b320207d8e8b7b0eb456c2661b71a866e59f230acd4d9fa8ae6904a80"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.3/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61ad128a8bd34624d4d73c885942fb43a2852a6bea35aa001b3ee9373722efd7"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
