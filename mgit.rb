class MultiGit < Formula
  desc "MultiGit - Effortless Git Repositories Management Tool"
  homepage "https://github.com/username/mgit"
  url "https://github.com/VitaliiBedletskyi/MultiGit/releases/download/\#{VERSION}/mgit-darwin-arm64"
  version "\#{VERSION}"
  sha256 "\#{SHA_AMD64}"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/VitaliiBedletskyi/MultiGit/releases/download/\#{VERSION}/mgit-darwin-amd64"
      sha256 "\#{SHA_AMD64}"
    end

    if Hardware::CPU.arm?
      url "https://github.com/VitaliiBedletskyi/MultiGit/releases/download/\#{VERSION}/mgit-darwin-arm64"
      sha256 "\#{SHA_ARM64}"
    end
  end

  def install
    if Hardware::CPU.intel?
      bin.install "mgit-darwin-amd64" => "mgit"
    elsif Hardware::CPU.arm?
      bin.install "mgit-darwin-arm64" => "mgit"
  end
end
