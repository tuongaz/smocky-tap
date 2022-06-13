# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.10/smocky_v0.0.10_darwin_amd64.tar.gz"
      sha256 "ca1b74879cbfc612492b81627db801fb88617844a8ccba7aaa511b74c30e9462"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.10/smocky_v0.0.10_darwin_arm64.tar.gz"
      sha256 "bf10a7f726dc93a1ebc96eacfacc8dcb0936a848ad86d063e19cbd68a15775af"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.10/smocky_v0.0.10_linux_amd64.tar.gz"
      sha256 "cbb40907c710c3737335a0046bd98ac95fa8e2dcc9304b486263b5232e6d3456"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.10/smocky_v0.0.10_linux_arm64.tar.gz"
      sha256 "774bbf954db77f2519e1524b93ccd6d99fd35f591aab6f2bef9ac589d65e51cd"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
