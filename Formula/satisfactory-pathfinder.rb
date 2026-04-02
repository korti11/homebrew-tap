class SatisfactoryPathfinder < Formula
  desc "Satisfactory factory planning companion CLI"
  homepage "https://github.com/korti11/satisfactory-pathfinder"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-arm64.tar.gz"
      sha256 "824abb5a1c77da60c9142505818f190e4c755f91fa1c8df14dbc85e33ed6234b"
    end
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-x86_64.tar.gz"
      sha256 "f066b79bc5bce6ed8227548f078fbeb8ff55ee7d4f1be8dd08675c6c16b338f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-linux-x86_64.tar.gz"
      sha256 "c1b229eb1aa274d566c1578acc3006f67752df1dbd7a0260b2758017e8c8ec4a"
    end
  end

  def install
    bin.install "pathfinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pathfinder --version")
  end
end
