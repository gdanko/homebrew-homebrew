class PstreeAT042 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.4.2.tar.gz"
    sha256 "85dc534d502b22e4c57c2e8275eecc4c95b8d4cbcb64ab94ef4a7b083832127b"
    version "0.4.2"

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
