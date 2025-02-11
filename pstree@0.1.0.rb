class PstreeAT010 < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "649139eb889ec80998b28bb1f66ce532431129f942fafb499a8a176313369d4d"
    version "0.1.0"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/pstree" => "free"
    end

    def test
        system "#{bin}/pstree", "--help"
    end
end
