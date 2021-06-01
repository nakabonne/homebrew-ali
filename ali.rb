# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ali < Formula
  desc "Generate HTTP load and plot the results in real-time"
  homepage "https://github.com/nakabonne/ali"
  version "0.7.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nakabonne/ali/releases/download/v0.7.0/ali_0.7.0_darwin_amd64.tar.gz"
      sha256 "b536b5444e50c22b338244a2f6a28f229f25262e64179de7d7392ebcff1ff758"
    end
    if Hardware::CPU.arm?
      url "https://github.com/nakabonne/ali/releases/download/v0.7.0/ali_0.7.0_darwin_arm64.tar.gz"
      sha256 "9c024674d706181d38cb67871a11ffbe9b3c20acff5ce73e02833e7bedf4f82d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nakabonne/ali/releases/download/v0.7.0/ali_0.7.0_linux_amd64.tar.gz"
      sha256 "2d4fbd89636ef9035ce2886db1e29757e96b7f938a2e96cd81356733919d277d"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nakabonne/ali/releases/download/v0.7.0/ali_0.7.0_linux_armv6.tar.gz"
      sha256 "4c3840a8bfaa20a1e7318420fa6d9a88fdae7a81c5cff01c8e53ec1b2f00a849"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nakabonne/ali/releases/download/v0.7.0/ali_0.7.0_linux_arm64.tar.gz"
      sha256 "c3027be31d9d60a082465407c11f6d8cc766459f1060b3a2d2ac0855b9aee926"
    end
  end

  def install
    bin.install "ali"
  end
end
