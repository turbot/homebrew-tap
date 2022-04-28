# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.13.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0-alpha.15/steampipe_darwin_amd64.zip"
    sha256 "d44765c6a09864e99f48377fdaf019a96cd0f3746c9b728d9a423cad40131037"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0-alpha.15/steampipe_darwin_arm64.zip"
    sha256 "17233e1c3bae91db3028742dca1298cab4df08b591cf84de32f70afa6ab67d54"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0-alpha.15/steampipe_linux_amd64.tar.gz"
    sha256 "1a6602cb34e1339ed72704746c6c645e2bdfb369c5536877c96b4b812631783e"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.0-alpha.15/steampipe_linux_arm64.tar.gz"
    sha256 "b6607a7c32e7b2e596218e3190e749f4354d979ea6bea7b9f7edd0ca18951a83"
  end

  def install
    bin.install "steampipe"
  end
end