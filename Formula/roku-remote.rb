class RokuRemote < Formula
  desc "CLI to interact with Roku devices on your local network"
  homepage "https://github.com/grahamplata/roku-remote"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.1/roku-remote_Darwin_x86_64.tar.gz"
      sha256 "11fdf1f638286fb82810a1db4cab33bbaa8e5886a34fdc494dbf3f1c501095ea"
    end
    if Hardware::CPU.arm?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.1/roku-remote_Darwin_arm64.tar.gz"
      sha256 "f8dcd37de4ffd9115c8c1de3eb9814a6448cd4facade664aae0c3f840f2e5b6f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.1/roku-remote_Linux_x86_64.tar.gz"
      sha256 "7c36d68e143f381b83055c27e926e7161bcb8aa9c49b1ccfe530d20cb101f5c4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/grahamplata/roku-remote/releases/download/v0.3.1/roku-remote_Linux_arm64.tar.gz"
      sha256 "ab7a78a152579068aca6703eb511359318a558c09f6253c5db6566f4837a8538"
    end
  end

  def install
    bin.install "roku-remote"
  end

  test do
    system "#{bin}/roku-remote", "--help"
  end
end
