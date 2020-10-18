# This file was generated by GoReleaser. DO NOT EDIT.
class Ali < Formula
  desc "Generate HTTP load and plot the results in real-time"
  homepage "https://github.com/nakabonne/ali"
  version "0.5.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nakabonne/ali/releases/download/v0.5.0/ali_0.5.0_darwin_amd64.tar.gz"
    sha256 "4f8780074c63856b6c541f5049904af26305ff6f83944fc5379f79873c37e97c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nakabonne/ali/releases/download/v0.5.0/ali_0.5.0_linux_amd64.tar.gz"
      sha256 "8281171a95a983d264d053bd0b205513c5c63e9619c751d7c78aab6dd1d65d94"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nakabonne/ali/releases/download/v0.5.0/ali_0.5.0_linux_arm64.tar.gz"
        sha256 "87c9eb46a5c75129a39160744ddd1e0b1fe5b11b623e920a489c0cac4de584e7"
      else
        url "https://github.com/nakabonne/ali/releases/download/v0.5.0/ali_0.5.0_linux_armv6.tar.gz"
        sha256 "b1627d5621435d8d94bb63ebbabe352704de9b024e1cc14a0a9101eb14dacf2b"
      end
    end
  end

  def install
    bin.install "ali"
  end
end
