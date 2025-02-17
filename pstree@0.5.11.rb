class PstreeAT0511 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.5.11.tar.gz"
    sha256 "ae8f2ceebba88649b4b382701d5b8cfd419e3d7d2eeb812009e1435a127d5af7"
    version "0.5.11"

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
