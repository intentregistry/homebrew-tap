class IntentCli < Formula
  desc "IntentRegistry CLI — publish and install AI Intents"
  homepage "https://intentregistry.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/intentregistry/intentregistry/releases/download/v0.1.0/intent-darwin-arm64.tar.gz"
      sha256 "<sha256-arm64>"
    else
      url "https://github.com/intentregistry/intentregistry/releases/download/v0.1.0/intent-darwin-x64.tar.gz"
      sha256 "<sha256-x64>"
    end
  end

  def install
    bin.install "intent"
  end
end