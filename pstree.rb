class Pstree < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.5.4.tar.gz"
    sha256 "3f5c63e71c75c5f29b114a1927ab2a38dd7d093b0d20fa5ec3b0a9a6d9809894"
    version "0.5.4"

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
