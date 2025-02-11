class PstreeAT010 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.1.1.tar.gz"
    sha256 "7467743f3dbe4d0c97f521d42c0c8bbeef7c339d815a20d310ed78bb386ac16c"
    version "0.1.1"

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
