# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.15.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.15.3/steampipe_darwin_amd64.zip"
      sha256 "5447cc4c31b906d573d8d0bcae20029915de3ca229252c2b59eb6927e5c3d565"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/turbot/steampipe/releases/download/v0.15.3/steampipe_darwin_arm64.zip"
      sha256 "a83924c4dfdad988fb7fcdbd9801344a9132f86b995a049df18a1a045504d19b"

      def install
        bin.install "steampipe"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/turbot/steampipe/releases/download/v0.15.3/steampipe_linux_arm64.tar.gz"
      sha256 "e28f80fac96f9f45afd95764d208e32d9a28d937057aeb644e1aeb0b1bd4f51a"

      def install
        bin.install "steampipe"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/turbot/steampipe/releases/download/v0.15.3/steampipe_linux_amd64.tar.gz"
      sha256 "2b1ccc24aeb6684e603e3f88260b7bf9f18ab5145d395acb37d1748306b2b572"

      def install
        bin.install "steampipe"
      end
    end
  end
end
