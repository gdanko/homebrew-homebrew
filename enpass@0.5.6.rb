class EnpassAT056 < Formula
    desc "A command line interface to the Enpass password manager."
    homepage "https://github.com/gdanko/enpass"
    url "https://github.com/gdanko/enpass/archive/refs/tags/v0.5.6.tar.gz"
    sha256 "a0f748c5c379add90aa10ca3bfac58b976bc2202327d67b614d4675d257adcbc"
    version "0.5.6"

    depends_on "go" => "1.12"

    def install
        system "make", "build"
        bin.install "bin/enpass" => "enpass"
    end

    def test
        system "#{bin}/enpass", "version"
    end
end
