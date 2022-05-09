# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.14.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.1/steampipe_darwin_amd64.zip"
    sha256 "b1b990658f8117f8b26674f7acfa5e414ce0e8db0108cd3c527321c2eb24ed9f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.1/steampipe_darwin_arm64.zip"
    sha256 "339005bcbe2be95359b6b29a842d9d39e741d1e0078464115854a4c7ff5dd171"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.1/steampipe_linux_amd64.tar.gz"
    sha256 "bc1530cb1100635ff8ae24e21f059f17c87cf149cb6df16615bd1dec9c573bd4"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.14.1/steampipe_linux_arm64.tar.gz"
    sha256 "2e3cc3e02d9f0ae8b476a7ec0a43958ddbaeb54fb842c0d0c22d1088b9cd846f"
  end

  def install
    bin.install "steampipe"
  end
end