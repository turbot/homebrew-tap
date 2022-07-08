# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.15.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_darwin_amd64.zip"
    sha256 "4a1ffd7c9b94b180c217bba1bce9556514bdbfb1466f07fa3a15aeb16a97e63c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_darwin_arm64.zip"
    sha256 "7f02f3680c29365badaee7d7a204a65420825f52d69f3e5f63a3bcf7962bccb8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_linux_amd64.tar.gz"
    sha256 "20089b712dda67bd18a007a55e4b9b95372c849573f77c59b3f7bdfcef871d8b"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/turbot/steampipe/releases/download/v0.15.0/steampipe_linux_arm64.tar.gz"
    sha256 "75a2a5899401ad0707ba81e1f4bbbd9f7aebaaf6d566d93298c00dff81515904"
  end

  def install
    bin.install "steampipe"
  end
end
