class PstreeAT056 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.5.6.tar.gz"
    sha256 "b36090e9981f1604f5925d6b5878ebacb975c5f1e2eff711fccc9ca332bb8378"
    version "0.5.6"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/pstree" => "pstree"
        man1.install "share/man/man1/pstree.1" => "pstree.1"
    end

    def test
        system "#{bin}/pstree", "--help"
    end
end
