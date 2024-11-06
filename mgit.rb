class Mgit < Formula
  desc "MultiGit - Effortless Git Repositories Management Tool"
  homepage "https://github.com/VitaliiBedletskyi/MultiGit"
  url "https://github.com/VitaliiBedletskyi/MultiGit/releases/download/v0.0.1/mgit-darwin-arm64"
  version "v0.0.1"
  sha256 ""

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/VitaliiBedletskyi/MultiGit/releases/download/v0.0.1/mgit-darwin-amd64"
      sha256 ""
    end

    if Hardware::CPU.arm?
      url "https://github.com/VitaliiBedletskyi/MultiGit/releases/download/v0.0.1/mgit-darwin-arm64"
      sha256 ""
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "mgit-darwin-amd64" => "mgit"
    elsif Hardware::CPU.arm?
      bin.install "mgit-darwin-arm64" => "mgit"
    end
  end
end
