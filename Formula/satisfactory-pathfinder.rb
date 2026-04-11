class SatisfactoryPathfinder < Formula
  desc "Satisfactory factory planning companion CLI"
  homepage "https://github.com/korti11/satisfactory-pathfinder"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-arm64.tar.gz"
      sha256 "ccd15e382f1c870350734a9b6507003306c738fe8734bc829e2a6c83908dc3e5"
    end
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-x86_64.tar.gz"
      sha256 "faf56404a782c5840238c8d72a0f48990d9cc352a66d7fb8d7e8cd3f25a80bed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-linux-x86_64.tar.gz"
      sha256 "c44b7b4ae91f928068d2e3d91ec4d482aa0063a5faae5ed9c0e18edf87ba524b"
    end
  end

  def install
    bin.install "pathfinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pathfinder --version")
  end
end
