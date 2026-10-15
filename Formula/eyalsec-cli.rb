class EyalsecCli < Formula
  desc "Read your EyalSec security events and machines from the terminal"
  homepage "https://eyalsec.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/EyalSec/eyalsec-cli/releases/download/v0.1.0/eyalsec-cli_0.1.0_darwin_arm64.tar.gz"
      sha256 "783bf7b59369b364f4e479e467edbac7db359e58046a94a99d1a17fcb3d46766"
    end
    on_intel do
      url "https://github.com/EyalSec/eyalsec-cli/releases/download/v0.1.0/eyalsec-cli_0.1.0_darwin_amd64.tar.gz"
      sha256 "c1ebc592f1d47cb28490c7328c538a0d0eac71c10b8c91407299606349225fc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EyalSec/eyalsec-cli/releases/download/v0.1.0/eyalsec-cli_0.1.0_linux_arm64.tar.gz"
      sha256 "871de92f396c984001ad173dab8417282394ce1713aec6d31f2d8fa6164e0ae6"
    end
    on_intel do
      url "https://github.com/EyalSec/eyalsec-cli/releases/download/v0.1.0/eyalsec-cli_0.1.0_linux_amd64.tar.gz"
      sha256 "09b4bd684b79e9a07b282784379c5697df435b3fc4db1bcede1fc513bce6e3c6"
    end
  end

  def install
    bin.install "eyalsec-cli"
  end

  test do
    assert_match "eyalsec-cli v#{version}", shell_output("#{bin}/eyalsec-cli version")
    ENV["EYALSEC_CONFIG"] = testpath/"config"
    output = shell_output("#{bin}/eyalsec-cli whoami 2>&1", 1)
    assert_match "no API key found", output
  end
end
