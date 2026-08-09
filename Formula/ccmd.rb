# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.2/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "191deac51416cc6e301e2d752356fcb50c20b3790c7523dbdd8b951a74ab2a92"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.2/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "3cee70de612a776a1bd1e272b1b5b3d28f7cdbd7281a2f50feb38d9c7c7fa5e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.2/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec8643376cf1292a9a6d61a887784ac4b1b2b774e650ada35205a6ca12afb471"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.2/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "871178b052cfb8acc5b4d10af9c3b61543a457d8bb0d5f6b32090e7e87265a48"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
