# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.43/smocky_v0.0.43_darwin_arm64.tar.gz"
      sha256 "e367c12fceb625fc15cce68fb4ffbeb6d8dc69cb80c365d6f5b98dbba9502110"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.43/smocky_v0.0.43_darwin_amd64.tar.gz"
      sha256 "b1787e474f8ca84bb8585f3666d9af12f61bf93625ff5248741ccb3321cfcf54"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.43/smocky_v0.0.43_linux_arm64.tar.gz"
      sha256 "8ec931ac0c9201b62d338938053a86d75d9f3a1b0450924bd8d4b854ee02bb25"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.43/smocky_v0.0.43_linux_amd64.tar.gz"
      sha256 "b0932d0591f12bdaf252c1683150099d2737c4d645fd87527842f0960e349154"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
