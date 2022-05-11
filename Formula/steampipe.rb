# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.3/steampipe_darwin_amd64.zip"
    sha256 "1b6c221f65a41c562383a4d7af6c1a743a7ce94415ce80d4fb3274907276cf4d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.3/steampipe_darwin_arm64.zip"
    sha256 "36824a02a41b72bc317e55f0f3633c86408cf2fec32406ac7c2be4b02bfa04ff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.3/steampipe_linux_amd64.tar.gz"
    sha256 "0c5b09872f126a968310ac528124274217b124a59b7355599c8fa42a05a06f5c"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.3/steampipe_linux_arm64.tar.gz"
    sha256 "3aa0892296f988cf88f5e9c909d023415624ed15f275b50d2573f65768b5e4ec"
  end

  def install
    bin.install "steampipe"
  end
end