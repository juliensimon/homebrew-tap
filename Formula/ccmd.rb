# typed: false
# frozen_string_literal: true

class Ccmd < Formula
  desc "Cache Commander — a TUI for browsing and managing cache directories"
  homepage "https://github.com/juliensimon/cache-commander"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.4/ccmd-aarch64-apple-darwin.tar.gz"
      sha256 "ef30b30945c605c11effb7066f7038a4a204d7fdb5b7a17834e13a452fbd01c5"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.4/ccmd-x86_64-apple-darwin.tar.gz"
      sha256 "7773d38d3d8519c7739be94a59c188c77ec88755111ca0bec05ebb6846b0e5b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.4/ccmd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c549977abb600d85e7ac5fb26bdd87ee827ba841f5bacc3314978efae1bde505"
    end
    on_intel do
      url "https://github.com/juliensimon/cache-commander/releases/download/v0.4.4/ccmd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87dbd7f459830fe91af4c063b3b3399347fe9f2226721bf308fae2377e051093"
    end
  end

  def install
    bin.install "ccmd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccmd --version")
  end
end
