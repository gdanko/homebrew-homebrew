class Pstree < Formula
    desc "Display a tree of processes."
    homepage "https://github.com/gdanko/pstree"
    url "https://github.com/gdanko/pstree/archive/refs/tags/v0.5.4.tar.gz"
    sha256 "ddfcbd8e7227ab6a82159ab6bc9787efd146ba8623a96412d3d7926aadb421f7"
    version "0.5.4"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/pstree" => "pstree"
        man1.install "share/man/man1/pstree.1.groff" => "pstree.1"
    end

    def test
        system "#{bin}/pstree", "--help"
    end
end
