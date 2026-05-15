# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.1/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "b028cc5146ce54088c09d9ec4b8929f0300bcd625942b5d3f8d173a16c28779f"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.1/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "e9186712c74c96475630df68e622fbb9a81867426c79255c6f3a3adc84c94821"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.1/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f516818cbe72e329f7d5309f68d9660f827235665c06941453515b3ccffb3d00"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.1/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd56fea74ded4d23971166cb273682e9b69f25405ff76aeb30074405e73f9e0a"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
