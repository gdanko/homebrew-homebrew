class PstreeAT080 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.8.0.tar.gz"
    sha256 "0cf0e484fa99b84ae2ae9dd3e5c29c2a98402985b210a3e80f356cf73abdc4e7"
    version "0.8.0"

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
