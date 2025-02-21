class PstreeAT063 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.6.3.tar.gz"
    sha256 "15fadf41c48d0c8df0ffdf0a851f93cd21146b317deb43e0ec50d34d862019f3"
    version "0.6.3"

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
