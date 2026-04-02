class SatisfactoryPathfinder < Formula
  desc "Satisfactory factory planning companion CLI"
  homepage "https://github.com/korti11/satisfactory-pathfinder"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-arm64.tar.gz"
      sha256 "edbaf4e819ed94671c44b67cd603d3baad81d225305f07e84422aa914f86ba72"
    end
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-x86_64.tar.gz"
      sha256 "755c3d86af687cbd5f489c37c9fbce62df07385d2912034b65292ef0137b527a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-linux-x86_64.tar.gz"
      sha256 "de6c5ed4854682703287f831fad62832e5b03430c1fc9a15103d11e87a9680bd"
    end
  end

  def install
    bin.install "pathfinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pathfinder --version")
  end
end
