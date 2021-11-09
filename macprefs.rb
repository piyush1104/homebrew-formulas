class Macprefs < Formula
    include Language::Python::Virtualenv
  
    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/piyush1104/macprefs"
    url "https://github.com/piyush1104/macprefs/archive/v1.0.28.tar.gz"
    sha256 "5d37a1c998c7982a82c449c105037ef2defa5b840f1b67a0a7bd1a6e1b1279e9"
  
    depends_on :python if MacOS.version <= :snow_leopard
  
    def install
      bin.install Dir["*"]
    end
  
    test do
      system "#{bin}/macprefs", "--help"
    end
  end
  
