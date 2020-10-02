# This file was generated by GoReleaser. DO NOT EDIT.
class Ali < Formula
  desc "Generate HTTP load and plot the results in real-time"
  homepage "https://github.com/nakabonne/ali"
  version "0.3.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nakabonne/ali/releases/download/v0.3.1/ali_0.3.1_darwin_amd64.tar.gz"
    sha256 "1fe93d9e51ec62b93901f80421fdfd44691eba6e732c221e67daa27b4eb0cc03"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nakabonne/ali/releases/download/v0.3.1/ali_0.3.1_linux_amd64.tar.gz"
      sha256 "62e0f01a8a66098c978330da6d3e09d1005eef94c84712dbd18b6f3fd41680de"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/nakabonne/ali/releases/download/v0.3.1/ali_0.3.1_linux_arm64.tar.gz"
        sha256 "bae4588335014e602fb69e392f7c5a8937b4a961bc7b09bfcf0647e1070dd5c0"
      else
        url "https://github.com/nakabonne/ali/releases/download/v0.3.1/ali_0.3.1_linux_armv6.tar.gz"
        sha256 "efa637d1aaf31f2ad404a89fe8935d49cfc02172e7832baaba8f70b40a6e3f23"
      end
    end
  end

  def install
    bin.install "ali"
  end
end
