class IntentCli < Formula
  desc "IntentRegistry CLI — publish and install AI Intents"
  homepage "https://intentregistry.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/intentregistry/intent-cli/releases/download/v0.1.0/intent-darwin-arm64.tar.gz"
      sha256 "40083c553708bb0a30fa639878d6c577eb70b77d90c7d2f7becc301d52bb2ea0"
    else
      # url "https://github.com/intentregistry/intent-cli/releases/download/v0.1.0/intent-darwin-x64.tar.gz"
      # sha256 "<sha256-x64>"
      odie "Intel-based builds are not available yet"
    end
  end

  def install
    bin.install "intent"
  end

  test do
    system "#{bin}/intent", "--help"
  end
end