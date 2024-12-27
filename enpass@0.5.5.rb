class EnpassAT055 < Formula
    desc "A command line interface to the Enpass password manager."
    homepage "https://github.com/gdanko/enpass"
    url "https://github.com/gdanko/enpass/archive/refs/tags/v0.5.5.tar.gz"
    sha256 "586242a85a1313636ea95349adaa42fe3ffc7c6308ec781aa93e2c766fc1deb2"
    version "0.5.5"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/enpass" => "enpass"
    end

    def test
        system "#{bin}/enpass", "version"
    end
end
