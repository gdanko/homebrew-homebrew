class PstreeAT043 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.4.3.tar.gz"
    sha256 "ad8568bfef6cfa034d1bff31e7626c2072dd40b64a14499dfc4774f32753a3ab"
    version "0.4.3"

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
