5# typed: false
# frozen_string_literal: true

class Steampipe < Formula
  desc "Steampipe exposes APIs and services as a high-performance relational database, giving you the ability to write SQL-based queries to explore, assess and report on dynamic data."
  homepage "https://steampipe.io/"
  version "0.11.1"

  if OS.mac?
    url "https://github.com/turbot/steampipe/releases/download/v0.11.1/steampipe_darwin_amd64.zip"
    sha256 "acfe2dd8b1880496134d26300c396c0914071ae057337945e91acbdb8f082250"
  end
  if OS.linux?
    url "https://github.com/turbot/steampipe/releases/download/v0.11.1/steampipe_linux_amd64.tar.gz"
    sha256 "96d5372923be5f5be3bb1fee4e0ee688ef16897c3207e1014a2afb8fdcb04c8c"
  end

  def install
    bin.install "steampipe"
  end
end
