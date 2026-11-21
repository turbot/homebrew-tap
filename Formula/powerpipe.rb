# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class Powerpipe < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.7.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.7.0/powerpipe.darwin.arm64.tar.gz"
      sha256 "5b5a1e1e52c8bdeb94c47b169fd1f6356c684d3c744d0e298b421e8f693c4ccd"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.7.0/powerpipe.darwin.amd64.tar.gz"
      sha256 "d12f37365bb58930ce56d3f382044cdbd450d8cf9f687fa9b9263793f60d59c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.7.0/powerpipe.linux.arm64.tar.gz"
      sha256 "ff7b90b507081a824a130d95ffa1309eaafc46e2398537018a2222dc13e6bf67"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.7.0/powerpipe.linux.amd64.tar.gz"
      sha256 "8ab5a15e544da2630cbfc26bd5b822786f4e93e0067133e37698bf0bed9e3ae0"
    end
  end

  def install
    bin.install "powerpipe"
  end
end
