# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.0/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "b0aab9098c13d3effbd01d94b2fd7afbb184b726acd0f0e5941206e671d2dd2a"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.0/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "f4348ce587f9c0b312423a3f542b110f31d0940a320e164b56ecd511b2ea8bb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.0/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2df195870c5e3323e31955c76ec67e9eb6e216e5aa77b11f67d6a53fe0831e40"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.0/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b5862fe9e45417f56c3dba7175f980c9b982bf84a2ad92289b7af0c4396d5ea"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
