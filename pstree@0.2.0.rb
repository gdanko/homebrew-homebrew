class PstreeAT020 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "a28c1c1d10ab82839a0d522e03f3ae26c524f0deebaf2f4d03df57b78a6e6ac5"
    version "0.2.0"

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
