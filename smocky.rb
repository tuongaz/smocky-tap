# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.7/smocky_v0.0.7_darwin_amd64.tar.gz"
      sha256 "d494b7bd735cf5519c7b6e55a306ce8d6c8449ff3fe3d9c4091d42a21e28457c"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.7/smocky_v0.0.7_darwin_arm64.tar.gz"
      sha256 "c7abdc1ca322553698c900518da6f7f187f5f9d676ffe5b178af5e526b31113e"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.7/smocky_v0.0.7_linux_arm64.tar.gz"
      sha256 "c4a11506d529e1527961be1966da6c59853b5173410b5968fccce1170dceb023"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.7/smocky_v0.0.7_linux_amd64.tar.gz"
      sha256 "a8f6df091e7c4bb4faee67ade481c5936bbf15dec1453adfc26279a47cfa2dd3"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
