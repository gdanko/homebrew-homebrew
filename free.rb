class Free < Formula
    desc "Display the amount of free and used memory in the system."
    homepage "https://github.com/gdanko/free"
    url "https://github.com/gdanko/free/archive/refs/tags/v0.3.4.tar.gz"
    sha256 "90d72c842e2130daac099a9a81c94dd88a4f48c0e144f7ba87eabe8c166bf79e"
    version "0.3.4"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/free" => "free"
        man1.install "share/man/man1/free.1" => "free.1"
    end

    def test
        system "#{bin}/free", "--help"
    end
end