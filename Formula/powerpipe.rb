# typed: false
# frozen_string_literal: true

# Written by Shipyard from the GitHub Release (docs/release-cli.md). The next release writes it again: do not edit it by hand.
class Powerpipe < Formula
  desc "Dashboards for DevOps. Visualize cloud configurations. Assess security posture against a massive library of benchmarks. Build custom dashboards with code."
  homepage "https://powerpipe.io/"
  version "1.8.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.1/powerpipe.darwin.arm64.tar.gz"
      sha256 "1d336d31901115a5cb88562996a2b9926eef8fea38a4a1d83497adcdf09f6625"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.1/powerpipe.darwin.amd64.tar.gz"
      sha256 "dffe8f61b842267f4b4e2e82a4a4259fdcd85e07be167370b8591383a191246c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.1/powerpipe.linux.arm64.tar.gz"
      sha256 "6ce4e9cd4461fdc191e48eba227a0974ff90076d1b06b47b8b80f992adbb7334"
    end
    on_intel do
      url "https://github.com/turbot/powerpipe/releases/download/v1.8.1/powerpipe.linux.amd64.tar.gz"
      sha256 "d24a4e9dfcb9677a415441d89065d06a9cbeb24f44a1e0664ea37798366b1ba0"
    end
  end

  def install
    bin.install "powerpipe"
  end
end
