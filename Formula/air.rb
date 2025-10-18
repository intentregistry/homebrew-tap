class Air < Formula
    desc "Agents Intent Registry CLI"
    homepage "https://intentregistry.com"
    version "0.1.0"
  
    if Hardware::CPU.arm?
      url "https://github.com/intentregistry/intentregistry/releases/download/v0.1.0/air-darwin-arm64.tar.gz"
      sha256 "<sha256>"
    else
      url "https://github.com/intentregistry/intentregistry/releases/download/v0.1.0/air-darwin-x64.tar.gz"
      sha256 "<sha256>"
    end
  
    def install
      bin.install "air"
    end
  end