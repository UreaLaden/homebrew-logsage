class Logsage < Formula
  desc "CLI tool that analyzes logs and identifies the most likely root causes of system failures"
  homepage "https://github.com/UreaLaden/log-sage"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/UreaLaden/log-sage/releases/download/v#{version}/logsage_#{version}_darwin_arm64.tar.gz"
      sha256 "bf15e45aa215bd6d0359bfc561f480e7ac57e321994332616ea01a9e38bee6d2"
    end
    on_intel do
      url "https://github.com/UreaLaden/log-sage/releases/download/v#{version}/logsage_#{version}_darwin_amd64.tar.gz"
      sha256 "6af01fffa57fbbde6b72f6ab94f2a1aa2bc651a4a17ba68e7966283cba369e96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/UreaLaden/log-sage/releases/download/v#{version}/logsage_#{version}_linux_arm64.tar.gz"
      sha256 "2d74183e61c591299742424e20c4616f4c90e9b365ed4949188e4e5c4d10af21"
    end
    on_intel do
      url "https://github.com/UreaLaden/log-sage/releases/download/v#{version}/logsage_#{version}_linux_amd64.tar.gz"
      sha256 "347fedace5b8b9126acf47ca9a777c293a569c62371326b898fca582acef5b0e"
    end
  end

  def install
    bin.install "logsage"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/logsage version")
  end
end
