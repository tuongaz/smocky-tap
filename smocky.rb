# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.17/smocky_v0.0.17_darwin_arm64.tar.gz"
      sha256 "7a9ad4555039ccd8afe16ea70e82dd154b9bdfae90661c4c65ef74a9fee1c8d2"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.17/smocky_v0.0.17_darwin_amd64.tar.gz"
      sha256 "e10377df45edb312c85ecf8e5fd4c6e27a33c168b18a9803b82800c24368133b"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.17/smocky_v0.0.17_linux_amd64.tar.gz"
      sha256 "0298139b05ca42c6c3c1de1b0f65abfa8bb0a2f7a7c5e0794a213a99bed8277b"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.17/smocky_v0.0.17_linux_arm64.tar.gz"
      sha256 "6fa4a8557bc061a0d8159392e7a9f688f9925134b6f5787711b19fe8ae5d967a"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
