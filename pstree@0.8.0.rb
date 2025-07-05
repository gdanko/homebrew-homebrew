class PstreeAT080 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.8.0.tar.gz"
    sha256 "3107e5d930b30f191596de9f1c7d432fe134f1e21674d89f775e28750c220f1f"
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
