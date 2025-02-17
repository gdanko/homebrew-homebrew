class PstreeAT058 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.5.8.tar.gz"
    sha256 "38992bd0f3f2e4e1a89b672e1313fa4c99c29dbddcfa73d6b09bd1438263b4ce"
    version "0.5.8"

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
