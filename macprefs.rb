class Macprefs < Formula
    include Language::Python::Virtualenv
  
    desc "Backup and Restore your Mac System and App Preferences"
    homepage "https://github.com/piyush1104/macprefs"
    url "https://github.com/piyush1104/macprefs/archive/v1.0.27.tar.gz"
    sha256 "248fa4c9ef4ddb91b31f936576472afce4eacdce71ae2bab18f166c7bd739aa1"
  
    depends_on :python if MacOS.version <= :snow_leopard
  
    def install
      bin.install Dir["*"]
    end
  
    test do
      system "#{bin}/macprefs", "--help"
    end
  end
  
