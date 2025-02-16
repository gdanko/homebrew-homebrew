class PstreeAT051 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.5.1.tar.gz"
    sha256 "94d6ea2aee4f4cbae5b9b49e0e62751f4e5cf710d09dc20f4bda1571fd3fda50"
    version "0.5.1"

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
