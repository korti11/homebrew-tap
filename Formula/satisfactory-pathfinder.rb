class SatisfactoryPathfinder < Formula
  desc "Satisfactory factory planning companion CLI"
  homepage "https://github.com/korti11/satisfactory-pathfinder"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-arm64.tar.gz"
      sha256 "bb325ad3c2b44a61dcc2f2b082d37559a3feb6a92edee857437549463b39c626"
    end
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-macos-x86_64.tar.gz"
      sha256 "c904da867b21c3bd60d4ce8e116009344f31c18d596d404639db3e73e476a296"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/korti11/satisfactory-pathfinder/releases/download/v#{version}/pathfinder-linux-x86_64.tar.gz"
      sha256 "4e8e43dd85a0c398a838bab31665e720aa59479f44ade6501e5e68f321161e5d"
    end
  end

  def install
    bin.install "pathfinder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pathfinder --version")
  end
end
