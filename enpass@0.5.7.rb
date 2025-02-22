class EnpassAT057 < Formula
    desc "A command line interface to the Enpass password manager."
    homepage "https://github.com/gdanko/enpass"
    url "https://github.com/gdanko/enpass/archive/refs/tags/v0.5.7.tar.gz"
    sha256 "4dc065bfd4dbf7e4e45f52c1e29f639bca7a11cf51fd287ea6df438cf547a74a"
    version "0.5.7"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/enpass" => "enpass"
    end

    def test
        system "#{bin}/enpass", "version"
    end
end
