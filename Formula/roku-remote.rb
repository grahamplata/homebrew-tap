class RokuRemote < Formula
  desc "CLI to interact with Roku devices on your local network"
  homepage "https://github.com/grahamplata/roku-remote"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.3/roku-remote_Darwin_x86_64.tar.gz"
      sha256 "752fdaede9d5781a1025c0900f01ee9742e89a3c9f44e3ad63a3b544d02cde45"
    end
    if Hardware::CPU.arm?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.3/roku-remote_Darwin_arm64.tar.gz"
      sha256 "15bfb6d354e2dc91b69b4f96077c2dcb1851412fd85f3c91f64a7c0abd207903"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.3/roku-remote_Linux_x86_64.tar.gz"
      sha256 "1691f0c65ff4506f6ad9f6e9088f6edb2cec7b90b9d8c29553b1d50ba97584da"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.3/roku-remote_Linux_arm64.tar.gz"
      sha256 "06160d13c70766c9c5c1c6af6882c06dbdbf82b747341a7e0491f961264647d9"
    end
  end

  def install
    bin.install "roku-remote"
  end

  test do
    system "#{bin}/roku-remote", "--help"
  end
end
