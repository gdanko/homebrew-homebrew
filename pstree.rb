class Pstree < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.4.1.tar.gz"
    sha256 "3631d1dc4deefe24f88db40f5ab5690aec70f572a6a85a9f4056fff54e8a2402"
    version "0.4.1"

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