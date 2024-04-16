# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ortfodb < Formula
  desc "A readable, easy and enjoyable way to manage portfolio databases using directories and text files."
  homepage "https://ortfo.org"
  version "1.4.0"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "gifsicle" => :optional
  depends_on "imagemagick"
  depends_on "poppler" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ortfo/db/releases/download/v1.4.0/ortfodb_Darwin_x86_64.tar.gz"
      sha256 "af956f6e342198c7a76ad975d703cae8db8381ee94f0b5c28d8d88e62735d6d9"

      def install
        bin.install "ortfodb_darwin_amd64"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ortfo/db/releases/download/v1.4.0/ortfodb_Darwin_arm64.tar.gz"
      sha256 "260bf9d731fe04db28b0a9544740db3b72d11f504ebb8e86bf5a0c92b4ba4e49"

      def install
        bin.install "ortfodb_darwin_arm64"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ortfo/db/releases/download/v1.4.0/ortfodb_Linux_x86_64.tar.gz"
      sha256 "cc389b2b0fb65f8090dc5072dc0dbec8cd8a315ce4752e4f039f4b24138a5e87"

      def install
        bin.install "ortfodb_linux_amd64"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ortfo/db/releases/download/v1.4.0/ortfodb_Linux_arm64.tar.gz"
      sha256 "c42b439dbd39b070e4ea375bff469840772b997dc9f04309423f3d73f5f52a20"

      def install
        bin.install "ortfodb_linux_arm64"
      end
    end
  end

  def caveats
    <<~EOS
      Requires ffmpeg, ffprobe, gifsicle (for GIFs generation), pdftoppm (for PDF thumbnailing) and imagemagick to be on your PATH.
    EOS
  end
end
