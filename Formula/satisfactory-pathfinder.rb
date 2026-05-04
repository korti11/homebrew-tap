class SatisfactoryPathfinder < Formula
  desc "Satisfactory factory planning companion CLI"
  homepage "https://github.com/korti11/satisfactory-pathfinder"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-arm64.tar.gz"
      sha256 "bd077b605cd818ceefb30faba3d9ee4b2ce2093219771cacecf606f18df8513e"
    end
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-x86_64.tar.gz"
      sha256 "09de08519f2c9d1252c3c8e8d3a681e53f0037de8ce85680b85b184023e29022"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-linux-x86_64.tar.gz"
      sha256 "f1a3dc674f275baddbcac3b799f34a31865bebb5ada07922a52bdb8b0e88b286"
    end
  end

  def install
    bin.install "pathfinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pathfinder --version")
  end
end
