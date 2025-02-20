class PstreeAT061 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.6.1.tar.gz"
    sha256 "d111a9b0e0c122d2049029892c3cb18ed32bf08edb7b83bf3fb0a09108554014"
    version "0.6.1"

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
